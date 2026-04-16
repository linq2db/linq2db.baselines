-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY t1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY t1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

