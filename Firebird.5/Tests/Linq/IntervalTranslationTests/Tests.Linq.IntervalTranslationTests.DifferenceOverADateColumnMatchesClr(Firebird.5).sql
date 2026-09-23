-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-12 10:00:00.0000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-06-01 00:00:00.0000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-06-12 00:00:00.0000'

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

-- Firebird.5 Firebird4
SELECT
	"r"."OpenedOn",
	"r"."ClosedOn"
FROM
	"CoarseEventRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	CAST(DateDiff(millisecond, "r"."OpenedOn", "r"."ClosedOn") * 10000 AS BigInt)
FROM
	"CoarseEventRow" "r"
FETCH NEXT 2 ROWS ONLY

