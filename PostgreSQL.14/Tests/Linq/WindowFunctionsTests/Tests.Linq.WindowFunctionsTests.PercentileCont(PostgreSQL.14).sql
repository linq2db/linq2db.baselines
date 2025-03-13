BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @argument Double
SET     @argument = 0.5

SELECT
	PERCENTILE_CONT(:argument) WITHIN GROUP (ORDER BY t1."DecimalValue")
FROM
	"WindowFunctionTestEntity" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @argument Double
SET     @argument = 0.5

SELECT
	PERCENTILE_CONT(:argument) WITHIN GROUP (ORDER BY t1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

