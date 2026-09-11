-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY t1."IntValue")
FROM
	"WindowFunctionTestEntity" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY t1."IntValue")
FROM
	"WindowFunctionTestEntity" t1

