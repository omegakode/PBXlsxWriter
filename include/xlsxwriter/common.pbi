;common.pbi

;- enum lxw_error
Enumeration
	;/** No error. */
	#LXW_NO_ERROR = 0
	
	;/** Memory error, failed To malloc() required memory. */
	#LXW_ERROR_MEMORY_MALLOC_FAILED
	
	;/** Error creating output xlsx file. Usually a permissions error. */
	#LXW_ERROR_CREATING_XLSX_FILE
	
	;/** Error encountered when creating a tmpfile during file assembly. */
	#LXW_ERROR_CREATING_TMPFILE
	
	;/** Error reading a tmpfile. */
	#LXW_ERROR_READING_TMPFILE
	
	;/** Zip generic error ZIP_ERRNO While creating the xlsx file. */
	#LXW_ERROR_ZIP_FILE_OPERATION
	
	;/** Zip error ZIP_PARAMERROR While creating the xlsx file. */
	#LXW_ERROR_ZIP_PARAMETER_ERROR
	
	;/** Zip error ZIP_BADZIPFILE (use_zip64 option may be required). */
	#LXW_ERROR_ZIP_BAD_ZIP_FILE
	
	;/** Zip error ZIP_INTERNALERROR While creating the xlsx file. */
	#LXW_ERROR_ZIP_INTERNAL_ERROR
	
	;/** File error Or unknown zip error when adding sub file To xlsx file. */
	#LXW_ERROR_ZIP_FILE_ADD
	
	;/** Unknown zip error when closing xlsx file. */
	#LXW_ERROR_ZIP_CLOSE
	
	;/** Feature is Not currently supported in this configuration. */
	#LXW_ERROR_FEATURE_NOT_SUPPORTED
	
	;/** NULL function parameter ignored. */
	#LXW_ERROR_NULL_PARAMETER_IGNORED
	
	;/** Function parameter validation error. */
	#LXW_ERROR_PARAMETER_VALIDATION
	
	;/** Function string parameter is empty. */
	#LXW_ERROR_PARAMETER_IS_EMPTY
	
	;/** Worksheet name exceeds Excel's limit of 31 characters. */
	#LXW_ERROR_SHEETNAME_LENGTH_EXCEEDED
	
	;/** Worksheet name cannot contain invalid characters: '[ ] : * ? / \\' */
	#LXW_ERROR_INVALID_SHEETNAME_CHARACTER
	
	;/** Worksheet name cannot start Or End With an apostrophe. */
	#LXW_ERROR_SHEETNAME_START_END_APOSTROPHE
	
	;/** Worksheet name is already in use. */
	#LXW_ERROR_SHEETNAME_ALREADY_USED
	
	;/** Parameter exceeds Excel's limit of 32 characters. */
	#LXW_ERROR_32_STRING_LENGTH_EXCEEDED
	
	;/** Parameter exceeds Excel's limit of 128 characters. */
	#LXW_ERROR_128_STRING_LENGTH_EXCEEDED
	
	;/** Parameter exceeds Excel's limit of 255 characters. */
	#LXW_ERROR_255_STRING_LENGTH_EXCEEDED
	
	;/** String exceeds Excel's limit of 32,767 characters. */
	#LXW_ERROR_MAX_STRING_LENGTH_EXCEEDED
	
	;/** Error finding internal string index. */
	#LXW_ERROR_SHARED_STRING_INDEX_NOT_FOUND
	
	;/** Worksheet row Or column index out of range. */
	#LXW_ERROR_WORKSHEET_INDEX_OUT_OF_RANGE
	
	;/** Maximum hyperlink length (2079) exceeded. */
	#LXW_ERROR_WORKSHEET_MAX_URL_LENGTH_EXCEEDED
	
	;/** Maximum number of worksheet URLs (65530) exceeded. */
	#LXW_ERROR_WORKSHEET_MAX_NUMBER_URLS_EXCEEDED
	
	;/** Couldn't read image dimensions or DPI. */
	#LXW_ERROR_IMAGE_DIMENSIONS
	
	#LXW_MAX_ERRNO
EndEnumeration