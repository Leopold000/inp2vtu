#if _MSC_VER >=1600
#pragma execution_character_set("utf-8")
#endif
#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QDebug>
#include <vtkPolyData.h>
#include <vtkSmartPointer.h>
#include <vtkPolyDataMapper.h>
#include <vtkActor.h>
#include <vtkRenderWindow.h>
#include <vtkRenderer.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkInteractorStyleTrackballCamera.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <vtkLight.h>
#include <vtkCamera.h>
#include <vtkConeSource.h>
#include <vtkPolyDataWriter.h>
#include <vtkDoubleArray.h>
#include <vtkPointData.h>
#include <vtkLookupTable.h>
#include <vtkScalarBarActor.h>
#include <vtkScalarBarRepresentation.h>
#include <vtkScalarBarWidget.h>
#include <vtkProperty.h>
#include <vtkUnstructuredGrid.h>
#include <vtkDataSetMapper.h>
#include <vtkQuadraticQuad.h>
#include <vtkCellData.h>
#include <vtkUnstructuredGridWriter.h>
#include <vtkUnstructuredGridReader.h>
#include <vtkFieldData.h>


#include <QFile>
#include <QCoreApplication>
#include <QFileDialog>
#include <QStringList>
#include <QDebug>


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
//    readInp();
//    writeVtu();
    readVTU();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::readInp()
{
    QString fileName = "D:/VTK/OO_test/VTKTest/source/disk.inp";    //inp文件所在路径

    if(fileName.isEmpty()) return;

    QFile file(fileName);


    if(!file.open(QIODevice::ReadWrite))
        return;
    QTextStream stream(&file);
    strList1.reserve(35000);//预留空间读取inp文本

    while(!stream.atEnd())
    {

        QString lineStr=stream.readLine();
        strList1.append(lineStr);

    }
    file.close();


    //获取节点和单元行数信息
    for (int i=0;i<strList1.length();i++)
    {
        if(strList1.at(i)=="*Node")
            Num_node=i+1;
        if (strList1.at(i)=="*Element, type=DC3D8")
            Num_element=i+1;
        if(strList1.at(i)=="*Nset, nset=Set-1, generate")
            Num_element_end=i;

    }

    //读取Node节点数据
    QStringList strColumn;

    for(int i=Num_node;i<Num_element-1;i++)
    {
        QVector<float>temp;
        QString str=strList1.at(i);
        strColumn=str.split(",",QString::SkipEmptyParts);//按,划分每一列数据

        temp.append(strColumn[0].toDouble());
        temp.append(strColumn[1].toDouble());
        temp.append(strColumn[2].toDouble());
        temp.append(strColumn[3].toDouble());
        NodeArray.append(temp);


    }

    //读取element数据
    QStringList strColumn1;

    for(int i=Num_element;i<Num_element_end;i++)
    {
        QVector<int>temp;
        QString str=strList1.at(i);
        strColumn1=str.split(",",QString::SkipEmptyParts);//按,划分每一列数据

        temp.append(strColumn1[1].toInt());
        temp.append(strColumn1[2].toInt());
        temp.append(strColumn1[3].toInt());
        temp.append(strColumn1[4].toInt());
        temp.append(strColumn1[5].toInt());
        temp.append(strColumn1[6].toInt());
        temp.append(strColumn1[7].toInt());
        temp.append(strColumn1[8].toInt());
        Element.append(temp);
    }



}

void MainWindow::writeVtu()
{
    vtkSmartPointer <vtkUnstructuredGrid> unstructruedGrid =
            vtkSmartPointer <vtkUnstructuredGrid>::New();


    vtkSmartPointer<vtkPoints> points=vtkSmartPointer<vtkPoints>::New();

    //设置点的个数
    points->SetNumberOfPoints(NodeArray.size()+1);


    unstructruedGrid->Allocate(Element.size());
    points->SetPoint(0, 0,0,0);
    for (int i = 0; i < NodeArray.size(); i++)
    {

        points->SetPoint(NodeArray[i][0], NodeArray[i][1],NodeArray[i][2],NodeArray[i][3]);

    }
    for(int i = 0 ; i < Element.size() ; i++)
    {
        vtkSmartPointer<vtkIdList>idList=vtkSmartPointer<vtkIdList>::New();
       idList->SetNumberOfIds(8);

        for(int j=0;j<8;j++)
        {
          idList->SetId(j,Element[i][j]);

        }

      unstructruedGrid -> InsertNextCell(VTK_HEXAHEDRON, idList);
      idList->Reset();
    }

    unstructruedGrid->SetPoints(points);
//    qDebug()<<unstructruedGrid->GetNumberOfCells();
//    // 创建一个vtkFieldData对象，用于存储多种类型的标量数据
//    vtkSmartPointer<vtkFieldData> fieldData = vtkSmartPointer<vtkFieldData>::New();


//    //设置节点数据
//    //应力数据
//    vtkSmartPointer<vtkDoubleArray>Stress =vtkSmartPointer<vtkDoubleArray>::New();
//    Stress->SetNumberOfValues(S_Mise.size());
//    Stress->SetName("Stress");
//    for(int i=0;i< S_Mise.size();i++){
//        Stress->SetValue(i,S_Mise[i].mise);
//    }

//    //温度数据
//    vtkSmartPointer<vtkDoubleArray>Temperature =vtkSmartPointer<vtkDoubleArray>::New();
//    Temperature->SetNumberOfValues(S_TEMP.size());
//    Temperature->SetName("Temperature");
//    for(int i=0;i< S_TEMP.size();i++){
//        Temperature->SetValue(i,S_TEMP[i].temp);
//    }

//    fieldData->AddArray(Stress);
//    fieldData->AddArray(Temperature);

////    qDebug()<<temperature->GetNumberOfValues();
//     //unstructruedGrid->GetCellData()->SetScalars(Stress);
//     unstructruedGrid->GetCellData()->SetScalars(Temperature);
//     double* range =unstructruedGrid->GetScalarRange();
//    unstructruedGrid->SetFieldData(fieldData);
//    unstructruedGrid->GetCellData()->SetActiveScalars(unstructruedGrid->GetCellData()->GetArrayName(0));

   // qDebug()<<unstructruedGrid->GetFieldData()->GetNumberOfArrays();

//    qDebug()<<Stress->GetNumberOfTuples();
//    qDebug()<<Stress->GetName();
    //设置单元的类型，以及单元的拓扑关系
//    unstructruedGrid->InsertNextCell(VTK_QUADRATIC_QUAD, idList);

//    vtkSmartPointer<vtkLookupTable> hueLut = vtkSmartPointer<vtkLookupTable>::New();
//    hueLut->SetNumberOfColors(256);		// 指定颜色查找表中有多少种颜色
//    hueLut->SetHueRange(0.6667, 0.0);	//蓝到红渐变
//    hueLut->SetSaturationRange(0.8,0.8);//颜色饱和度
//    hueLut->SetValueRange(0.8,0.8);     //颜色亮度
//    hueLut->Build();

//    unstructruedGrid->GetPointData()->GetScalars()->SetTuple(5787,(23*255,23*255,23*255));
     vtkSmartPointer<vtkDataSetMapper> mapper =
       vtkSmartPointer<vtkDataSetMapper>::New();

    mapper->SetInputData(unstructruedGrid);
//    mapper->SetColorModeToDefault();			// 默认的映射器行为，即把unsigned char类型的标量属性数据当作颜色值，不执行隐式。对于其他类型的标量数据，将通过查询表映射。
////    mapper->SetScalarModeToUseCellData();
//    mapper->SetLookupTable(hueLut);
//    mapper->SetScalarRange(range);


     vtkSmartPointer<vtkActor> actor =
       vtkSmartPointer<vtkActor>::New();
     actor->SetMapper(mapper.GetPointer());
//     actor->GetProperty()->SetRepresentationToWireframe();
     actor->GetProperty()->SetRepresentationToSurface();
     vtkSmartPointer<vtkRenderer> ren =
       vtkSmartPointer<vtkRenderer>::New();
     ren->SetBackground(255, 248, 220);
     ren->AddActor(actor.GetPointer());
     ren->SetBackground(0.529,0.8078,0.92157);
     ren->ResetCamera();
     //ren->GetActiveCamera()->Zoom(1.5);


     vtkSmartPointer<vtkGenericOpenGLRenderWindow> window =
             vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
     window->AddRenderer(ren);

//     //设置颜色条
//     vtkSmartPointer <vtkScalarBarActor> barActor =
//     vtkSmartPointer <vtkScalarBarActor>::New();
//     barActor -> SetLookupTable(hueLut); //设置颜色查找表
//     const char* Title=unstructruedGrid->GetCellData()->GetArrayName(0);
//     barActor -> SetTitle(Title); //设置颜色条标题
//     barActor -> SetNumberOfLabels(6); //设置颜色条标签个数
//     barActor->SetLabelFormat("%1.1e");//设置颜色标签格式（科学计数法%m.ne)
//     vtkSmartPointer <vtkScalarBarRepresentation> barRepresentation =
//     vtkSmartPointer <vtkScalarBarRepresentation>::New();
//     barRepresentation -> SetPosition(0,0); //设置颜色条左下角位置
//     barRepresentation -> SetPosition2(2,3); //设置颜色条右上角相对于左下角位置
//     barRepresentation -> SetShowBorder(1); //设置颜色条边框显隐
//     vtkSmartPointer <vtkScalarBarWidget> barWidget =
//     vtkSmartPointer <vtkScalarBarWidget>::New();

//     barWidget -> SetScalarBarActor(barActor); //设置颜色条
//     barWidget -> SetRepresentation(barRepresentation); //设置颜色条表示

//     ren->AddActor2D(barActor);

    ui->Vtkwidget->SetRenderWindow(window);
    //将vtkpolyData类型的数据写入到一个vtk文件，保存位置是工程当前目录
    vtkSmartPointer<vtkUnstructuredGridWriter>writer=vtkSmartPointer<vtkUnstructuredGridWriter>::New();
    writer->SetFileName("disk.vtu");
    writer->SetInputData(unstructruedGrid);
    writer->Write();
//    qDebug()<<"111";

}

void MainWindow::readVTU()
{
    std::string inputFilename = "D:/VTK/OO_test/VTKTest/source/disk.vtu";//读取的vtu文件

    // 加载一个的vtu模型
    vtkSmartPointer<vtkUnstructuredGridReader> source
            = vtkSmartPointer<vtkUnstructuredGridReader>::New();

    source->SetFileName(inputFilename.c_str());
    source->Update();

    vtkSmartPointer<vtkUnstructuredGrid> uns = vtkSmartPointer<vtkUnstructuredGrid>::New();

    uns->DeepCopy(source->GetOutput());

    vtkSmartPointer<vtkLookupTable> hueLut = vtkSmartPointer<vtkLookupTable>::New();
    hueLut->SetNumberOfColors(256);		// 指定颜色查找表中有多少种颜色
    hueLut->SetHueRange(0.6667, 0.0);	//蓝到红渐变
    hueLut->SetSaturationRange(0.8,0.8);//颜色饱和度
    hueLut->SetValueRange(0.8,0.8);     //颜色亮度
    hueLut->Build();

//    unstructruedGrid->GetPointData()->GetScalars()->SetTuple(5787,(23*255,23*255,23*255));
    double* range =uns->GetScalarRange();
     vtkSmartPointer<vtkDataSetMapper> mapper =
       vtkSmartPointer<vtkDataSetMapper>::New();

    mapper->SetInputData(uns);
    mapper->SetColorModeToDefault();			// 默认的映射器行为，即把unsigned char类型的标量属性数据当作颜色值，不执行隐式。对于其他类型的标量数据，将通过查询表映射。
    mapper->SetLookupTable(hueLut);
    mapper->SetScalarRange(range);


     vtkSmartPointer<vtkActor> actor =
       vtkSmartPointer<vtkActor>::New();
     actor->SetMapper(mapper.GetPointer());
//     actor->GetProperty()->SetRepresentationToWireframe();
//     actor->GetProperty()->SetRepresentationToSurface();
     actor->GetProperty()->EdgeVisibilityOn();//显示网格线

     vtkSmartPointer<vtkRenderer> ren =
       vtkSmartPointer<vtkRenderer>::New();
     ren->SetBackground(255, 248, 220);
     ren->AddActor(actor.GetPointer());
     ren->SetBackground(0.529,0.8078,0.92157);
     ren->ResetCamera();
     //ren->GetActiveCamera()->Zoom(1.5);


     vtkSmartPointer<vtkGenericOpenGLRenderWindow> window =
             vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
     window->AddRenderer(ren);

     //设置颜色条
     vtkSmartPointer <vtkScalarBarActor> barActor =
     vtkSmartPointer <vtkScalarBarActor>::New();
     barActor -> SetLookupTable(hueLut); //设置颜色查找表
     const char* Title=uns->GetCellData()->GetArrayName(0);
     barActor -> SetTitle(Title); //设置颜色条标题
     barActor -> SetNumberOfLabels(6); //设置颜色条标签个数
     barActor->SetLabelFormat("%1.1e");//设置颜色标签格式（科学计数法%m.ne)
     vtkSmartPointer <vtkScalarBarRepresentation> barRepresentation =
     vtkSmartPointer <vtkScalarBarRepresentation>::New();
     barRepresentation -> SetPosition(0,0); //设置颜色条左下角位置
     barRepresentation -> SetPosition2(2,3); //设置颜色条右上角相对于左下角位置
     barRepresentation -> SetShowBorder(1); //设置颜色条边框显隐
     vtkSmartPointer <vtkScalarBarWidget> barWidget =
     vtkSmartPointer <vtkScalarBarWidget>::New();

     barWidget -> SetScalarBarActor(barActor); //设置颜色条
     barWidget -> SetRepresentation(barRepresentation); //设置颜色条表示

     ren->AddActor2D(barActor);


    ui->Vtkwidget->SetRenderWindow(window);
}
