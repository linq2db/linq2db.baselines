-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2045-06-05 04:03:02.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:00:00.0000'

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

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '1970-01-02 00:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:02:05.0000'

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

-- Firebird.3 Firebird3
SELECT
	CAST(Mod(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) / 36000000000, 24) AS Int)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	CAST(Mod(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) / 600000000, 60) AS Int)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	CAST(Mod(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) / 10000000, 60) AS Int)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

