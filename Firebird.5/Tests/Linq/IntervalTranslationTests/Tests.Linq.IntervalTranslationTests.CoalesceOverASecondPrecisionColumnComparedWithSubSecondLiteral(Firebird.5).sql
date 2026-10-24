-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000'
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
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 11:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 13:00:00.0000'

INSERT INTO "CoarseNullableEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Firebird.5 Firebird4
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	Coalesce("r"."FinishedOn", "r"."StartedOn") < TIMESTAMP '2026-06-01 10:00:00.5000'

-- Firebird.5 Firebird4
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	TIMESTAMP '2026-06-01 10:00:00.5000' > Coalesce("r"."FinishedOn", "r"."StartedOn")

-- Firebird.5 Firebird4
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	Coalesce("r"."FinishedOn", "r"."StartedOn") = TIMESTAMP '2026-06-01 10:00:00.5000'

