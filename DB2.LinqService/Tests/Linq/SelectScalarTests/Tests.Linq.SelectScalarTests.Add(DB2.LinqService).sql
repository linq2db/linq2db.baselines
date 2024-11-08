BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 5

SELECT
	CAST(@p AS Int)
FROM SYSIBM.SYSDUMMY1

