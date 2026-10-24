-- Firebird.3 Firebird3
DECLARE @min SmallInt -- Int16
SET     @min = -32768

SELECT
	CAST(@min AS SmallInt)
FROM rdb$database

-- Firebird.3 Firebird3
DECLARE @max SmallInt -- Int16
SET     @max = 32767

SELECT
	CAST(@max AS SmallInt)
FROM rdb$database

