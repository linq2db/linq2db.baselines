BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @s1 Char(1) -- StringFixedLength
SET     @s1 = chr(0)

SELECT
	CAST(@s1 AS NChar(1))
FROM SYSIBM.SYSDUMMY1

