BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer -- Int32
SET     @value = NULL
DECLARE @p Integer(4) -- Int32
SET     @p = 0

SELECT
	CAST(@value AS Int),
	CAST(@p AS Int)
FROM SYSIBM.SYSDUMMY1

