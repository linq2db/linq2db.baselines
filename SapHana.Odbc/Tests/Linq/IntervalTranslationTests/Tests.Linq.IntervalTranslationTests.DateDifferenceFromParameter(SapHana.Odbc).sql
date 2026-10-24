-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-05 00:00:00.0000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-03 00:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 20:00:00.0000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST(Nano100_Between("r"."StartedOn", ?) AS Double) / 36000000000 > 24

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST(Nano100_Between(?, "r"."FinishedOn") AS Double) / 36000000000 > 24

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
ORDER BY
	CAST(Nano100_Between("r"."StartedOn", ?) AS Double) / 600000000

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	CAST(Nano100_Between("r"."StartedOn", ?) AS Double) / 864000000000,
	CAST(MOD(Nano100_Between("r"."StartedOn", ?) / 36000000000, 24) AS Integer)
FROM
	"EventRow" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

