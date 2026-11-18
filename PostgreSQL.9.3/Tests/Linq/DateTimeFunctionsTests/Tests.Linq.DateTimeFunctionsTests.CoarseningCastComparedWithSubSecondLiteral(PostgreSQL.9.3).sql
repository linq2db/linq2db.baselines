-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Timestamp -- DateTime2
SET     @Value = '2026-06-01 10:00:00'::timestamp
DECLARE @Day Date
SET     @Day = '2026-06-01'::date
DECLARE @Wide Timestamp -- DateTime2
SET     @Wide = '2026-06-01 10:00:00.250'::timestamp

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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	r."Wide"::Timestamp < '2026-06-01 10:00:00.500'::timestamp

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	r."Wide"::Timestamp >= '2026-06-01 10:00:00.500'::timestamp

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	r."Wide"::Timestamp = '2026-06-01 10:00:00.500'::timestamp

