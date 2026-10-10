-- DB2 DB2.LUW DB2LUW
DECLARE @min SmallInt(2) -- Int16
SET     @min = -128

SELECT
	CAST(@min AS smallint)
FROM SYSIBM.SYSDUMMY1

-- DB2 DB2.LUW DB2LUW
DECLARE @max SmallInt(2) -- Int16
SET     @max = 127

SELECT
	CAST(@max AS smallint)
FROM SYSIBM.SYSDUMMY1

