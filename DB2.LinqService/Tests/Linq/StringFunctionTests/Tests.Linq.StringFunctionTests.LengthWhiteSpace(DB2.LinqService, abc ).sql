BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '
DECLARE @stringValue_1 Integer(4) -- Int32
SET     @stringValue_1 = 5

SELECT
	CAST(@stringValue AS NVarChar(5)),
	CAST(@stringValue_1 AS Int)
FROM SYSIBM.SYSDUMMY1

