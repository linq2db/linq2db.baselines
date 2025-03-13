BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @argument BinaryDouble -- Double
SET     @argument = 0.5D

SELECT
	PERCENTILE_CONT(:argument) WITHIN GROUP (ORDER BY t1."DecimalValue")
FROM
	"WindowFunctionTestEntity" t1

