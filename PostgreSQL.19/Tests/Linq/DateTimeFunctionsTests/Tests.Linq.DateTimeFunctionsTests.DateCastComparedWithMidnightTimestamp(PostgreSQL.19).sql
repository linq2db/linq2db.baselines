-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	r."Value"::Date = '2026-06-01'::date

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	r."Value"::Date < '2026-06-01'::date

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	'2026-06-01'::date = r."Value"::Date

