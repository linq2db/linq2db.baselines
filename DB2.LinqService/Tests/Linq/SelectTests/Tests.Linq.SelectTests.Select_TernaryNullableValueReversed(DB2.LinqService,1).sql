BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @value Integer(4) -- Int32
SET     @value = 1

SELECT
	CAST(@value AS Int)
FROM SYSIBM.SYSDUMMY1

