-- Firebird.4 Firebird4
DECLARE @min SmallInt -- Int16
SET     @min = -128

SELECT
	CAST(@min AS SmallInt)
FROM rdb$database

-- Firebird.4 Firebird4
DECLARE @max SmallInt -- Int16
SET     @max = 127

SELECT
	CAST(@max AS SmallInt)
FROM rdb$database

