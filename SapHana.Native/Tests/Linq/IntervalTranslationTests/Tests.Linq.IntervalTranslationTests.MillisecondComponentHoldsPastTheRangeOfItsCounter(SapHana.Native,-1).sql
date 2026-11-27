-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '1970-02-03 04:05:06.7800000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'

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
SET     @StartedOn = TIMESTAMP '2045-06-05 04:03:02.3400000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'

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
SET     @Id = 3
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '1970-01-02 00:02:05.2500000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'

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
	"r"."StartedOn",
	"r"."FinishedOn"
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	CAST(MOD(CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 10000 AS BigInt), 1000) AS Integer)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

