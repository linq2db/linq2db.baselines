BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @s1 VarChar(1) -- String
SET     @s1 = x'00'

SELECT
	CAST(@s1 AS NVarChar(1))
FROM SYSIBM.SYSDUMMY1

