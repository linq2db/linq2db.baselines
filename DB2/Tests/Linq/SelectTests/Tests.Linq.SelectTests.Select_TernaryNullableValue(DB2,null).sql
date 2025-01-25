BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer -- Int32
SET     @value = NULL
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 0

SELECT
	CAST(@value AS Int),
	CAST(@value_1 AS Int)
FROM SYSIBM.SYSDUMMY1

