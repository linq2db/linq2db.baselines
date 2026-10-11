-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 0

-- Firebird.3 Firebird3
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOnNullable", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.3 Firebird3
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000 AS Int) > 0

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int) > 0

-- Firebird.3 Firebird3
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000 AS Int),
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int)
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	"r"."Id"

