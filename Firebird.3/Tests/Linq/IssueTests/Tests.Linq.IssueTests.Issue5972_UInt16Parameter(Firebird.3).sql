-- Firebird.3 Firebird3
DECLARE @min Integer -- Int32
SET     @min = 0

SELECT
	CAST(@min AS Int)
FROM rdb$database

-- Firebird.3 Firebird3
DECLARE @max Integer -- Int32
SET     @max = 65535

SELECT
	CAST(@max AS Int)
FROM rdb$database

