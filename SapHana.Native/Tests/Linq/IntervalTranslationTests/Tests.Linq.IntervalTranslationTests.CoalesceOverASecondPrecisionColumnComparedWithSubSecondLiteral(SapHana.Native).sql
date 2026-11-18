-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = NULL

INSERT INTO "CoarseNullableEventRow"
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
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 11:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 13:00:00.0000000'

INSERT INTO "CoarseNullableEventRow"
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
	"CoarseNullableEventRow" "r"
WHERE
	Coalesce("r"."FinishedOn", "r"."StartedOn") < TIMESTAMP '2026-06-01 10:00:00.5000000'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	TIMESTAMP '2026-06-01 10:00:00.5000000' > Coalesce("r"."FinishedOn", "r"."StartedOn")

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	Coalesce("r"."FinishedOn", "r"."StartedOn") = TIMESTAMP '2026-06-01 10:00:00.5000000'

