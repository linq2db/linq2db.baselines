-- Firebird.2.5 Firebird
DECLARE @min SmallInt -- Int16
SET     @min = 0

SELECT
	CAST(@min AS SmallInt)
FROM rdb$database

-- Firebird.2.5 Firebird
DECLARE @max SmallInt -- Int16
SET     @max = 255

SELECT
	CAST(@max AS SmallInt)
FROM rdb$database

