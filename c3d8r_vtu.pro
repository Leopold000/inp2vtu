#-------------------------------------------------
#
# Project created by QtCreator 2024-03-11T13:14:25
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = c3d8r_vtu
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui


INCLUDEPATH +="D:\VTK\VTK-8.2.0\install\include\vtk-8.2"
INCLUDEPATH +="D:\VTK\VTK-8.2.0\install\include\vtk-8.2\vtkhdf5"

win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkChartsCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonColor-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonComputationalGeometry-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonDataModel-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonExecutionModel-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonMath-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonMisc-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonSystem-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkCommonTransforms-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkDICOMParser-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkDomainsChemistry-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkDomainsChemistryOpenGL2-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkdoubleconversion-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkexodusII-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkexpat-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersAMR-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersExtraction-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersFlowPaths-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersGeneral-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersGeneric-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersGeometry-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersHybrid-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersHyperTree-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersImaging-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersModeling-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersParallel-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersParallelImaging-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersPoints-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersProgrammable-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersSelection-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersSMP-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersSources-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersStatistics-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersTexture-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersTopology-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkFiltersVerdict-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkfreetype-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkGeovisCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkgl2ps-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkglew-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkGUISupportQt-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkGUISupportQtSQL-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkhdf5-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkhdf5_hl-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingColor-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingFourier-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingGeneral-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingHybrid-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingMath-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingMorphological-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingSources-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingStatistics-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkImagingStencil-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkInfovisCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkInfovisLayout-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkInteractionImage-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkInteractionStyle-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkInteractionWidgets-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOAMR-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOAsynchronous-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOCityGML-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOEnSight-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOExodus-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOExport-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOExportOpenGL2-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOExportPDF-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOGeometry-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOImage-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOImport-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOInfovis-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOLegacy-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOLSDyna-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOMINC-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOMovie-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIONetCDF-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOParallel-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOParallelXML-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOPLY-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOSegY-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOSQL-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOTecplotTable-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOVeraOut-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOVideo-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOXML-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkIOXMLParser-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkjpeg-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkjsoncpp-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtklibharu-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtklibxml2-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtklz4-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtklzma-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkmetaio-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkNetCDF-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkogg-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkParallelCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkpng-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkproj-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkpugixml-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingAnnotation-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingContext2D-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingContextOpenGL2-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingFreeType-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingGL2PSOpenGL2-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingImage-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingLabel-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingLOD-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingOpenGL2-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingQt-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingVolume-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkRenderingVolumeOpenGL2-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtksqlite-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtksys-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtktheora-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtktiff-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkverdict-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkViewsContext2D-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkViewsCore-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkViewsInfovis-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkViewsQt-8.2.lib)
win32:LIBS += $$quote(D:\VTK\VTK-8.2.0\install\lib\vtkzlib-8.2.lib)
