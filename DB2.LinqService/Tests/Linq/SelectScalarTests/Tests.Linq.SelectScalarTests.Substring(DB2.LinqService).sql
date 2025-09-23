BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	Substr('123', 2, CAST(@p AS Int))
FROM SYSIBM.SYSDUMMY1

