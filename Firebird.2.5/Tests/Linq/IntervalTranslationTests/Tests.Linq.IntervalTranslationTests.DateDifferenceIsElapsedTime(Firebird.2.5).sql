-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:59:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:01:00.0000'

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

-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) AS DOUBLE PRECISION) / 600000000,
	CAST(Mod(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) / 600000000, 60) AS Int)
FROM
	"EventRow" "r"

