-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 10:00:00.0064'

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
SELECT
	CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt)
FROM
	"EventRow" "r"

-- Firebird.2.5 Firebird
SELECT
	CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt)
FROM
	"EventRow" "r"
WHERE
	"r"."Id" > 0
UNION ALL
SELECT
	CAST(DateDiff(millisecond, "r_1"."StartedOn", "r_1"."FinishedOn") * 10000 AS BigInt)
FROM
	"EventRow" "r_1"
WHERE
	"r_1"."Id" <= 0

