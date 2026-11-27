-- Firebird.4 Firebird4
DECLARE @min Integer -- Int32
SET     @min = 0

SELECT
	CAST(@min AS Int)
FROM rdb$database

-- Firebird.4 Firebird4
DECLARE @max Integer -- Int32
SET     @max = 65535

SELECT
	CAST(@max AS Int)
FROM rdb$database

