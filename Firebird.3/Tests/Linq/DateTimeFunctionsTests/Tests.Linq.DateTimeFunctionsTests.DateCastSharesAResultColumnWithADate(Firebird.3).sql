-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	CAST("r"."Value" AS Date)
FROM
	"CoarseDateShapesRow" "r"
UNION ALL
SELECT
	"r_1"."Day"
FROM
	"CoarseDateShapesRow" "r_1"

-- Firebird.3 Firebird3
SELECT
	CASE
		WHEN "r"."Id" > 0 THEN CAST("r"."Value" AS Date)
		ELSE CAST("r"."Value" AS Date)
	END
FROM
	"CoarseDateShapesRow" "r"

