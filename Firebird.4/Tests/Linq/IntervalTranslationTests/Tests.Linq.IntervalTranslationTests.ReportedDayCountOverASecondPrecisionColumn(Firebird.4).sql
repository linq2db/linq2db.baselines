-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 10:00:00.0000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-06-01 00:00:00.0000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-06-01 00:00:00.0000'

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-05-25 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-05-25 10:00:00.0000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-05-25 00:00:00.0000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-05-25 00:00:00.0000'

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- Firebird.4 Firebird4
SELECT
	CAST(Floor(CAST(CAST(DateDiff(millisecond, MIN("grp"."StartedOn"), MAX("grp"."StartedOn")) * 10000 AS BigInt) AS DOUBLE PRECISION) / 864000000000) AS Int) + 1
FROM
	"CoarseEventRow" "grp"
FETCH NEXT 2 ROWS ONLY

