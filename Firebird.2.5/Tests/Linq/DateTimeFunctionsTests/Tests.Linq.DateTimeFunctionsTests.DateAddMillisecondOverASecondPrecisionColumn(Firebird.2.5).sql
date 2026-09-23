-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT FIRST 2
	DateAdd(Millisecond, 226, "r"."Value")
FROM
	"CoarseDateShapesRow" "r"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	DateAdd(Millisecond, 226, "r"."Value")
FROM
	"CoarseDateShapesRow" "r"

