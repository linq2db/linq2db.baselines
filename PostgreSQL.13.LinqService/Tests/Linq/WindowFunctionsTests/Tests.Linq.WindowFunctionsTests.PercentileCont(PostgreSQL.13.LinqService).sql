BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @argument Double
SET     @argument = 0.5

SELECT
	PERCENTILE_CONT(:argument) WITHIN GROUP (ORDER BY t1."DecimalValue")
FROM
	"WindowFunctionTestEntity" t1

