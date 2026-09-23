-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2025-06-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2025-06-01 10:00:00.0000'

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
	COUNT(*)
FROM
	"EventRow" "r"
WHERE
	CAST(CAST(DateDiff(millisecond, "r"."StartedOn", CURRENT_TIMESTAMP) * 10000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 > 1

