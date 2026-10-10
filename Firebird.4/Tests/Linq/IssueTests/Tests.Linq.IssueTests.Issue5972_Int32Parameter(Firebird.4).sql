-- Firebird.4 Firebird4
DECLARE @min Integer -- Int32
SET     @min = -2147483648

SELECT
	CAST(@min AS Int)
FROM rdb$database

-- Firebird.4 Firebird4
DECLARE @max Integer -- Int32
SET     @max = 2147483647

SELECT
	CAST(@max AS Int)
FROM rdb$database

