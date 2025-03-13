BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @argument BinaryDouble -- Double
SET     @argument = 0.5D

SELECT
	PERCENTILE_CONT(:argument) WITHIN GROUP (ORDER BY t1."DecimalValue")
FROM
	"WindowFunctionTestEntity" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @argument BinaryDouble -- Double
SET     @argument = 0.5D

SELECT
	PERCENTILE_CONT(:argument) WITHIN GROUP (ORDER BY t1."IntValue" DESC)
FROM
	"WindowFunctionTestEntity" t1

