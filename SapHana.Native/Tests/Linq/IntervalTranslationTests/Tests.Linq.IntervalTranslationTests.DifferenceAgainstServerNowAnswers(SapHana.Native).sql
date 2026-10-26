-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2025-06-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2025-06-01 10:00:00.0000000'

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
	COUNT(*)
FROM
	"EventRow" "r"
WHERE
	CAST(Nano100_Between("r"."StartedOn", CURRENT_TIMESTAMP) AS Double) / 864000000000 > 1

