-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 15:00:00.0000'

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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000'

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
	"t1"."Id",
	"t1"."Taken"
FROM
	(
		SELECT
			CAST(CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) AS DOUBLE PRECISION) / 36000000000 as "TotalHours",
			"r"."Id",
			CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) as "Taken"
		FROM
			"EventRow" "r"
	) "t1"
WHERE
	"t1"."TotalHours" > 3
ORDER BY
	"t1"."Id"

