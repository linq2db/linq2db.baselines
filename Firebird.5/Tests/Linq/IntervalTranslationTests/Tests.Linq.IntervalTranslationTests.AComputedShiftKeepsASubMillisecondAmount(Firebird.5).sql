-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 10:00:00.0015'

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

-- Firebird.5 Firebird4
SELECT
	DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, TIMESTAMP '2026-03-01 00:00:00.0000'))
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	DateAdd(millisecond, CAST(Mod(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) / 864000000000, TIMESTAMP '2026-03-01 00:00:00.0000')) > TIMESTAMP '2026-03-01 00:00:00.0010'

