-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", TIMESTAMP '2026-10-01 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", TIMESTAMP '2026-10-01 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 > 0

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", TIMESTAMP '2026-10-01 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 600000000 > 0

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", TIMESTAMP '2026-10-01 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) / 864000000000 AS Int) > 0

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOnNullable", TIMESTAMP '2026-10-01 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 0

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
ORDER BY
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", TIMESTAMP '2026-10-01 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000

-- Firebird.5 Firebird4
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."ClosedOn", TIMESTAMP '2026-10-01 00:00:00.0000') * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000
FROM
	"Issue5777Row" "r"
ORDER BY
	"r"."Id"

