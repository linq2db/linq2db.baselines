-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 < 12

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000

-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000,
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000,
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 600000000,
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000 AS Int),
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int)
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1

