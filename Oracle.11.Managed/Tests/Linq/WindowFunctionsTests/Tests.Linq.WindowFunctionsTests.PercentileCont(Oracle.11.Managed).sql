-- Oracle.11.Managed Oracle11

SELECT
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY t1."DecimalValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

-- Oracle.11.Managed Oracle11

SELECT
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY t1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

