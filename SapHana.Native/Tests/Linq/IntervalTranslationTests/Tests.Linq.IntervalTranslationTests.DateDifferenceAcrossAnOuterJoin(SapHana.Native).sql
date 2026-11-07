-- SapHana.Native SapHana
SELECT
	CAST(Nano100_Between("x"."StartedOn", "b"."FinishedOn") AS Double) / 864000000000
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 864000000000 AS Integer)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 36000000000, 24) AS Integer)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 600000000, 60) AS Integer)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(MOD(Nano100_Between("b"."FinishedOn", "x"."StartedOn") / 36000000000, 24) AS Integer)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(Nano100_Between("b"."FinishedOn", "x"."StartedOn") AS Double) / 36000000000
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- SapHana.Native SapHana
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Nano100_Between("x"."StartedOn", "b"."FinishedOn") AS Double) / 864000000000 > 1

-- SapHana.Native SapHana
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 36000000000, 24) AS Integer) = :"Hours"

-- SapHana.Native SapHana
DECLARE @Minutes Integer -- Int32
SET     @Minutes = 15

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 600000000, 60) AS Integer) = :"Minutes"

-- SapHana.Native SapHana
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Nano100_Between("b"."FinishedOn", "x"."StartedOn") AS Double) / 36000000000 < -1

-- SapHana.Native SapHana
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(MOD(Nano100_Between("b"."FinishedOn", "x"."StartedOn") / 36000000000, 24) AS Integer) = -:"Hours"

