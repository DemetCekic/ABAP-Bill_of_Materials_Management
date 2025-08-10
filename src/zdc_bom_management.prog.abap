*&---------------------------------------------------------------------*
*& Report ZDC_BOM_MANAGEMENT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZDC_BOM_MANAGEMENT.

INCLUDE: ZDC_BOM_MANAGEMENT_TOP,
         ZDC_BOM_MANAGEMENT_CLASS,
         ZDC_BOM_MANAGEMENT_MDL.

START-OF-SELECTION.

  CREATE OBJECT GO_MAIN.
  GO_MAIN->START_SCREEN( ).
