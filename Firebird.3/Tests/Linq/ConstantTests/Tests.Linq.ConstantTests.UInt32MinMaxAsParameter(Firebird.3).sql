-- Firebird.3 Firebird3
DECLARE @min BigInt -- Int64
SET     @min = 0

SELECT
	CAST(@min AS BigInt)
FROM rdb$database

-- Firebird.3 Firebird3
DECLARE @max BigInt -- Int64
SET     @max = 4294967295

SELECT
	CAST(@max AS BigInt)
FROM rdb$database

