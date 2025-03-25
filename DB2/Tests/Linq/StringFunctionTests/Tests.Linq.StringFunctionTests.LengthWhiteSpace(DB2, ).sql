BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @stringValue VarChar(1) -- String
SET     @stringValue = ' '

SELECT
	CAST(@stringValue AS NVarChar(1)),
	CHAR_LENGTH(CAST(@stringValue AS NVarChar(1)))
FROM SYSIBM.SYSDUMMY1

