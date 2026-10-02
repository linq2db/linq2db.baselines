-- Firebird.5 Firebird4
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "x"."StartedOn", "b"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- Firebird.5 Firebird4
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "x"."StartedOn", "b"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000 AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- Firebird.5 Firebird4
SELECT
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "x"."StartedOn", "b"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- Firebird.5 Firebird4
SELECT
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "x"."StartedOn", "b"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 600000000, 60) AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- Firebird.5 Firebird4
SELECT
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "b"."FinishedOn", "x"."StartedOn") * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- Firebird.5 Firebird4
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "b"."FinishedOn", "x"."StartedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- Firebird.5 Firebird4
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "x"."StartedOn", "b"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 1

-- Firebird.5 Firebird4
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "x"."StartedOn", "b"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int) = @Hours

-- Firebird.5 Firebird4
DECLARE @Minutes Integer -- Int32
SET     @Minutes = 15

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "x"."StartedOn", "b"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 600000000, 60) AS Int) = @Minutes

-- Firebird.5 Firebird4
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "b"."FinishedOn", "x"."StartedOn") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 < -1

-- Firebird.5 Firebird4
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "b"."FinishedOn", "x"."StartedOn") * 10) AS BigInt) * 1000 AS BigInt) / 36000000000, 24) AS Int) = -@Hours

