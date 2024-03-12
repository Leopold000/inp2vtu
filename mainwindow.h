#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#ifndef INITIAL_OPENGL
#define INITIAL_OPENGL
#include <vtkAutoInit.h>
VTK_MODULE_INIT(vtkRenderingOpenGL2)
VTK_MODULE_INIT(vtkInteractionStyle)
VTK_MODULE_INIT(vtkRenderingFreeType)
#endif
#include <vtkSmartPointer.h>
#include <vtkUnstructuredGridReader.h>
#include <vtkLookupTable.h>
#include <vtkScalarBarActor.h>
#include <vtkScalarBarRepresentation.h>
#include <vtkScalarBarWidget.h>
#include <vtkDataSetMapper.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <vtkActor.h>
#include <vtkRenderWindow.h>
#include <vtkRenderer.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkInteractorStyleTrackballCamera.h>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    QStringList strList1;
    int Num_node=0;//Node number Start
    int Num_element=0;//Node number end
    int Num_element_end=0;//Element number end
    QVector<QVector<float>>NodeArray;
    QVector<QVector<int>>Element;
    void readInp();//读取inp模型文件

    void writeVtu();//写出vtu文件

    void readVTU();//读取生成的vtu文件

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
