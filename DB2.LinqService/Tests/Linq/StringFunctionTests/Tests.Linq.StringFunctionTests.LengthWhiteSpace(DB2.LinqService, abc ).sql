BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	CAST(@stringValue AS NVarChar(5)),
	CHAR_LENGTH(CAST(@stringValue AS NVarChar(5)))
FROM SYSIBM.SYSDUMMY1

