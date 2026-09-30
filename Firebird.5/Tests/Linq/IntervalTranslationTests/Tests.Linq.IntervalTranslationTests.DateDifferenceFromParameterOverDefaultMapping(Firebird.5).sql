-- Firebird.5 Firebird4
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.5 Firebird4
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, @asOf, "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 0

-- Firebird.5 Firebird4
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
ORDER BY
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", @asOf) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 600000000

-- Firebird.5 Firebird4
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000'

SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, CAST(@asOf AS TimeStamp), "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"Issue5777Row" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

