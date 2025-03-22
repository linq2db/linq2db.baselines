BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @stringValue VarChar(4) -- String
SET     @stringValue = 'abc '

SELECT
	CAST(@stringValue AS NVarChar(4)),
	CHAR_LENGTH(CAST(@stringValue AS NVarChar(4)))
FROM SYSIBM.SYSDUMMY1

