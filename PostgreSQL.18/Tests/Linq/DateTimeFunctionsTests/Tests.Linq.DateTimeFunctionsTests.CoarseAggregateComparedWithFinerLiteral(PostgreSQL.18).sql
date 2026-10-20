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
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseDateShapesRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(g_1."Day") < '2026-06-01 10:00:00'::timestamp
	) t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseDateShapesRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MIN(g_1."Day") >= '2026-06-01 10:00:00'::timestamp
	) t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseDateShapesRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(g_1."Value") < '2026-06-01 10:00:00.500'::timestamp
	) t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseDateShapesRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(g_1."Value") = '2026-06-01 10:00:00.500'::timestamp
	) t1

