;xlswriter_test.pb

EnableExplicit

IncludeFile "PBXlsxWriter.pbi"

Define.i wb, ws, fmt

wb = workbook_new("demo.xlsx")
ws = workbook_add_worksheet(wb, #Null$)

fmt = workbook_add_format(wb)
format_set_bold(fmt)
worksheet_set_column(ws, 0, 0, 20, #Null)

worksheet_write_string(ws, 0, 0, "Hello", #Null)

worksheet_write_string(ws, 1, 0, "World", fmt)

worksheet_write_number(ws, 2, 0, 123, #Null)
worksheet_write_number(ws, 3, 0, 123.456, #Null)

workbook_close(wb)



