-- Firebird.3 Firebird3
DECLARE @min BigInt -- Int64
SET     @min = -9223372036854775808

SELECT
	CAST(@min AS BigInt)
FROM rdb$database

-- Firebird.3 Firebird3
DECLARE @max BigInt -- Int64
SET     @max = 9223372036854775807

SELECT
	CAST(@max AS BigInt)
FROM rdb$database

