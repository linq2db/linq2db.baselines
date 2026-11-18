-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-03 13:30:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 14:30:00.0000'

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
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double
SET     @TotalMilliseconds = 0.1234

SELECT FIRST 2
	CAST(@Ticks AS BigInt) + "r"."Id",
	CAST(@TotalMilliseconds AS DOUBLE PRECISION) + CAST("r"."Id" AS DOUBLE PRECISION)
FROM
	"EventRow" "r"

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"EventRow" "r"

-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"EventRow" "r"

-- Firebird.2.5 Firebird
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.0002'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	"r"."FinishedOn" > @FinishedOn

