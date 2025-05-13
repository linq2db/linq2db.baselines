BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @stringValue VarChar(1) -- String
SET     @stringValue = ' '
DECLARE @stringValue_1 Integer(4) -- Int32
SET     @stringValue_1 = 1

SELECT
	CAST(@stringValue AS NVarChar(1)),
	CAST(@stringValue_1 AS Int)
FROM SYSIBM.SYSDUMMY1

