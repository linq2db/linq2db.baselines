BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @s1 VarChar(5) -- String
SET     @s1 = '--'

SELECT
	CAST(@s1 AS NVarChar(5))
FROM SYSIBM.SYSDUMMY1

