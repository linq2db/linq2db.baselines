BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @stringValue VarChar(4) -- String
SET     @stringValue = 'abc '
DECLARE @stringValue_1 Integer(4) -- Int32
SET     @stringValue_1 = 4

SELECT
	CAST(@stringValue AS NVarChar(4)),
	CAST(@stringValue_1 AS Int)
FROM SYSIBM.SYSDUMMY1

