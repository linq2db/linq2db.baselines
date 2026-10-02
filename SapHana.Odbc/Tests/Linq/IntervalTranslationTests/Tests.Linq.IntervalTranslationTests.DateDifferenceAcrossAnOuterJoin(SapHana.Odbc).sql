-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(Nano100_Between("x"."StartedOn", "b"."FinishedOn") AS Double) / 864000000000,
	CAST(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 864000000000 AS Integer),
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 36000000000, 24) AS Integer),
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 600000000, 60) AS Integer),
	CAST(Nano100_Between("b"."FinishedOn", "x"."StartedOn") AS Double) / 36000000000,
	CAST(MOD(Nano100_Between("b"."FinishedOn", "x"."StartedOn") / 36000000000, 24) AS Integer)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Nano100_Between("x"."StartedOn", "b"."FinishedOn") AS Double) / 864000000000 > 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 36000000000, 24) AS Integer) = ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @Minutes Int -- Int32
SET     @Minutes = 15

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(MOD(Nano100_Between("x"."StartedOn", "b"."FinishedOn") / 600000000, 60) AS Integer) = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Nano100_Between("b"."FinishedOn", "x"."StartedOn") AS Double) / 36000000000 < -1

-- SapHana.Odbc SapHanaOdbc
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(MOD(Nano100_Between("b"."FinishedOn", "x"."StartedOn") / 36000000000, 24) AS Integer) = -?

