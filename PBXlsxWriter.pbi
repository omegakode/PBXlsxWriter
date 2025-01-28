;PBXlsxWriter.pbi

CompilerIf  #PB_Compiler_Processor = #PB_Processor_x86 Or #PB_Compiler_Processor = #PB_Processor_Arm32
	Debug "Error only 64 bit supported"
	End 
CompilerEndIf

XIncludeFile "include" + #PS$ + "xlsxwriter.pbi"

#XLSX_LIB_PATH = #PB_Compiler_Home + "purelibraries" + #PS$ + "userlibraries" + #PS$

CompilerIf #PB_Compiler_OS = #PB_OS_Windows
	ImportC #XLSX_LIB_PATH + "zlib.lib"
	EndImport
	
	ImportC #XLSX_LIB_PATH + "minizip.lib"
	EndImport
	
	ImportC #XLSX_LIB_PATH + "xlsxwriter.lib"

CompilerElseIf #PB_Compiler_OS = #PB_OS_Linux Or #PB_Compiler_OS = #PB_OS_MacOS
	ImportC "-L/" + #XLSX_LIB_PATH + " -lxlsxwriter -lz -lminizip"

CompilerEndIf
	;workbook.h
	workbook_new.i(name.p-utf8)
	workbook_close.l(workbook.i)
	workbook_add_worksheet.i(workbook.i, sheetname.p-utf8)
	workbook_add_format.i(workbook.i)
 
	;format.h
	format_set_bold.l(format.i)
	
	;worksheet.h
	worksheet_set_column.l(worksheet.i, first_col.u, last_col.u, width.d, format.i)
 	worksheet_write_string.l(worksheet.i, row.l, col.u, string.p-utf8, format.i)
 	worksheet_write_number.l(worksheet.i, row.l, col.u, number.d, format.i)
 	worksheet_insert_image.l(worksheet.i, row.l, col.u, filename.p-utf8)
EndImport
