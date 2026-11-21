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
SELECT
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS Double) / 864000000000,
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS Double) / 36000000000,
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS Double) / 600000000,
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS Double) / 10000000,
	CAST(CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 864000000000 AS BigInt) AS Integer),
	CAST(MOD(CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 36000000000 AS BigInt), 24) AS Integer),
	CAST(MOD(CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 600000000 AS BigInt), 60) AS Integer)
FROM
	"EventRow" "r"
LIMIT 2

