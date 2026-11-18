-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Timestamp -- DateTime2
SET     @Value = '2026-06-01 10:00:00'::timestamp
DECLARE @Day Date
SET     @Day = '2026-06-01'::date
DECLARE @Wide Timestamp -- DateTime2
SET     @Wide = '2026-06-01 10:00:00'::timestamp

INSERT INTO "CoarseDateShapesRow"
(
	"Id",
	"Value",
	"Day",
	"Wide"
)
VALUES
(
	:Id,
	:Value,
	:Day,
	:Wide
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Value"::Date
FROM
	"CoarseDateShapesRow" r
UNION ALL
SELECT
	r_1."Day"
FROM
	"CoarseDateShapesRow" r_1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	CASE
		WHEN r."Id" > 0 THEN Date_Trunc('day', r."Value")
		ELSE r."Value"::Date
	END
FROM
	"CoarseDateShapesRow" r

