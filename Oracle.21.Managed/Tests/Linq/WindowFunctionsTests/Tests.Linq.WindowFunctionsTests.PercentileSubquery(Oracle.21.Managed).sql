-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."CategoryId",
	(
		SELECT
			PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY x."DecimalValue")
		FROM
			"WindowFunctionTestEntity" x
		WHERE
			x."Id" > t."Id" AND x."DecimalValue" > 1
	)
FROM
	"WindowFunctionTestEntity" t

