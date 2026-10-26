-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2026-01-05 00:00:00.0000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:"Id",
	:"StartedOn",
	:"FinishedOn"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2026-01-03 00:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2026-01-03 20:00:00.0000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:"Id",
	:"StartedOn",
	:"FinishedOn"
)

-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST(Nano100_Between("r"."StartedOn", :"asOf") AS Double) / 36000000000 > 24

-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST(Nano100_Between(:"asOf", "r"."FinishedOn") AS Double) / 36000000000 > 24

-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
ORDER BY
	CAST(Nano100_Between("r"."StartedOn", :"asOf") AS Double) / 600000000

-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'
DECLARE @asOf_1 TimeStamp -- DateTime2
SET     @asOf_1 = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	CAST(Nano100_Between("r"."StartedOn", :"asOf") AS Double) / 864000000000,
	CAST(MOD(Nano100_Between("r"."StartedOn", :"asOf_1") / 36000000000, 24) AS Integer)
FROM
	"EventRow" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

