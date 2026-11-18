-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	MAX(g_1."Day")
FROM
	"CoarseDateShapesRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	'2026-06-01 10:00:00'::timestamp::TimeStamp
FROM
	"CoarseDateShapesRow" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	MAX(g_1."Value")
FROM
	"CoarseDateShapesRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	'2026-06-01 10:00:00.500'::timestamp::TimeStamp
FROM
	"CoarseDateShapesRow" r

