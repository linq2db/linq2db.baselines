-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

UPDATE
	"MeasuredPeriodRow" "r"
SET
	"Elapsed" = CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", CAST(@asOf AS TimeStamp)) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000
WHERE
	"r"."Id" = 1

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."ClosedOn",
	"t1"."Elapsed"
FROM
	"MeasuredPeriodRow" "t1"

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"MeasuredPeriodRow" "r"
WHERE
	"r"."Elapsed" < CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

UPDATE
	"MeasuredPeriodRow" "r"
SET
	"Elapsed" = CAST(CAST(CAST(Floor(DateDiff(millisecond, CAST(@asOf AS TimeStamp), "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
WHERE
	"r"."Id" = 1

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."ClosedOn",
	"t1"."Elapsed"
FROM
	"MeasuredPeriodRow" "t1"

-- Firebird.2.5 Firebird
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"MeasuredPeriodRow" "r"
WHERE
	"r"."Elapsed" < CAST(CAST(CAST(Floor(DateDiff(millisecond, @asOf, "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000

