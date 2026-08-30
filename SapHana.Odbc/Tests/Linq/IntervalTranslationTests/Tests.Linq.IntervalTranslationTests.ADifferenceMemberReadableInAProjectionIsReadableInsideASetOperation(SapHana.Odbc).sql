-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 10:00:00.0064560'

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
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 10, 1000) AS Integer)
FROM
	"EventRow" "r"

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 10, 1000) AS Integer)
FROM
	"EventRow" "r"
WHERE
	"r"."Id" > 0
UNION ALL
SELECT
	CAST(MOD(Nano100_Between("r_1"."StartedOn", "r_1"."FinishedOn") / 10, 1000) AS Integer)
FROM
	"EventRow" "r_1"
WHERE
	"r_1"."Id" <= 0

