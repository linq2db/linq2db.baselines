-- PostgreSQL.19 PostgreSQL13

SELECT
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY t1."DecimalValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

-- PostgreSQL.19 PostgreSQL13

SELECT
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY t1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

