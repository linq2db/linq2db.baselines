BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer(4) -- Int32
SET     @value = 1
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	CAST(@value AS Int),
	CAST(@p AS Int)
FROM SYSIBM.SYSDUMMY1

