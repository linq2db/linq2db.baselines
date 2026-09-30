-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 0

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOnNullable", TIMESTAMP '2026-09-30 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOnNullable") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"Issue5777Row" "r"
WHERE
	"r"."Id" = 1

