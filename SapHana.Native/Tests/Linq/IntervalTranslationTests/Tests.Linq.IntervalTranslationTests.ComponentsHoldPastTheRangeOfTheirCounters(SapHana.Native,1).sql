-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2045-06-05 04:03:02.0000000'

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
SET     @StartedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:02:05.0000000'

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
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 36000000000, 24) AS Integer)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 600000000, 60) AS Integer)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 10000000, 60) AS Integer)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

