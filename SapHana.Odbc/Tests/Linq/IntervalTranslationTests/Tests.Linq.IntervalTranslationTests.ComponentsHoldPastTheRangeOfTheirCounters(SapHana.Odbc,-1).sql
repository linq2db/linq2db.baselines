-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2045-06-05 04:03:02.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'

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
SET     @StartedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:02:05.0000000'

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
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 36000000000, 24) AS Integer)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 600000000, 60) AS Integer)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 10000000, 60) AS Integer)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

