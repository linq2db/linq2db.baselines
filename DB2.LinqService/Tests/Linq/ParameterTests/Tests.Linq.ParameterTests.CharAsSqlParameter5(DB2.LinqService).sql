BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @s1 Char(1) -- StringFixedLength
SET     @s1 = x'00'

SELECT
	CAST(@s1 AS NChar(1))
FROM SYSIBM.SYSDUMMY1

