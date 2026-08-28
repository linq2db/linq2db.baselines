-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
SELECT
	CAST(Mod(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) / 10, 1000) AS Int)
FROM
	"EventRow" "r"

-- Firebird.4 Firebird4
SELECT
	CAST(Mod(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) / 10, 1000) AS Int)
FROM
	"EventRow" "r"
WHERE
	"r"."Id" > 0
UNION ALL
SELECT
	CAST(Mod(CAST(DateDiff(millisecond, "r_1"."StartedOn", "r_1"."FinishedOn") * 10000 AS BigInt) / 10, 1000) AS Int)
FROM
	"EventRow" "r_1"
WHERE
	"r_1"."Id" <= 0

