-- Firebird.2.5 Firebird
DECLARE @min Integer -- Int32
SET     @min = -2147483648

SELECT
	CAST(@min AS Int)
FROM rdb$database

-- Firebird.2.5 Firebird
DECLARE @max Integer -- Int32
SET     @max = 2147483647

SELECT
	CAST(@max AS Int)
FROM rdb$database

