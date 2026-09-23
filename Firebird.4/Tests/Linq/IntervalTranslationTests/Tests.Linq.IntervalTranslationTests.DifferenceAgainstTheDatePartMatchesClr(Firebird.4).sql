-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 15:00:00.0000'

INSERT INTO "EventRow"
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

-- Firebird.4 Firebird4
SELECT
	CAST(CAST(DateDiff(millisecond, CAST("r"."FinishedOn" AS Date), "r"."FinishedOn") * 10000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

