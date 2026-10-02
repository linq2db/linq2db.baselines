-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, @asOf, "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 0

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 600000000

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT FIRST 2
	CAST(CAST(CAST(Floor(DateDiff(millisecond, CAST(@asOf AS TimeStamp), "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1

