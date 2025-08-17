BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @s1 VarChar(7) -- String
SET     @s1 = '0 ' || x'00' || ' '' 0'

SELECT
	CAST(@s1 AS NVarChar(7))
FROM SYSIBM.SYSDUMMY1

