-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value TimeStamp -- DateTime
SET     @Value = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @Day Date
SET     @Day = TIMESTAMP '2026-06-01 00:00:00.0000000'
DECLARE @Wide TimeStamp -- DateTime2
SET     @Wide = TIMESTAMP '2026-06-01 10:00:00.0000000'

INSERT INTO "CoarseDateShapesRow"
(
	"Id",
	"Value",
	"Day",
	"Wide"
)
VALUES
(
	:"Id",
	:"Value",
	:"Day",
	:"Wide"
)

-- SapHana.Native SapHana
SELECT
	CAST("r"."Value" AS Date)
FROM
	"CoarseDateShapesRow" "r"
UNION ALL
SELECT
	"r_1"."Day"
FROM
	"CoarseDateShapesRow" "r_1"

-- SapHana.Native SapHana
SELECT
	CASE
		WHEN "r"."Id" > 0 THEN To_Date("r"."Value")
		ELSE CAST("r"."Value" AS Date)
	END
FROM
	"CoarseDateShapesRow" "r"

