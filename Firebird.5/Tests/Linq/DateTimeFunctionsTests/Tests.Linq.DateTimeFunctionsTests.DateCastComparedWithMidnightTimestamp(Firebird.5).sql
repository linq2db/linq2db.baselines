-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value TimeStamp -- DateTime
SET     @Value = TIMESTAMP '2026-06-01 10:00:00.0000'
DECLARE @Day Date
SET     @Day = TIMESTAMP '2026-06-01 00:00:00.0000'
DECLARE @Wide TimeStamp -- DateTime
SET     @Wide = TIMESTAMP '2026-06-01 10:00:00.0000'

INSERT INTO "CoarseDateShapesRow"
(
	"Id",
	"Value",
	"Day",
	"Wide"
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- Firebird.5 Firebird4
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	CAST("r"."Value" AS Date) = TIMESTAMP '2026-06-01 00:00:00.0000'

-- Firebird.5 Firebird4
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	CAST("r"."Value" AS Date) < TIMESTAMP '2026-06-01 00:00:00.0000'

-- Firebird.5 Firebird4
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	TIMESTAMP '2026-06-01 00:00:00.0000' = CAST("r"."Value" AS Date)

