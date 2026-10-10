-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Value"
FROM
	"CoarseConvertedRow" r
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @value Timestamp -- DateTime2
SET     @value = '2026-06-01 09:00:00'::timestamp

SELECT
	COUNT(*)
FROM
	"CoarseConvertedRow" r
WHERE
	r."Value" = :value

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @value Timestamp -- DateTime2
SET     @value = '2026-06-01 09:00:00'::timestamp

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(g_1."Value") = :value
	) t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @CoarseValue Timestamp -- DateTime2
SET     @CoarseValue = '2026-06-01 09:00:00'::timestamp

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MAX(g_1."Value") = :CoarseValue
	) t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @day Date
SET     @day = '2026-05-31'::date

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MIN(g_1."Day") = :day
	) t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @CoarseConvertedDay Date
SET     @CoarseConvertedDay = '2026-05-31'::date

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."Id"
		FROM
			"CoarseConvertedRow" g_1
		GROUP BY
			g_1."Id"
		HAVING
			MIN(g_1."Day") = :CoarseConvertedDay
	) t1

