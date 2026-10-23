-- Firebird.4 Firebird4
DECLARE @min BigInt -- Int64
SET     @min = -9223372036854775808

SELECT
	CAST(@min AS BigInt)
FROM rdb$database

-- Firebird.4 Firebird4
DECLARE @max BigInt -- Int64
SET     @max = 9223372036854775807

SELECT
	CAST(@max AS BigInt)
FROM rdb$database

