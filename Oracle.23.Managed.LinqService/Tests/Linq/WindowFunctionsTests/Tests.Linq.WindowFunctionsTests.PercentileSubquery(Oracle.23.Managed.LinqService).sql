BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."CategoryId",
	t1."c1"
FROM
	"WindowFunctionTestEntity" t
		OUTER APPLY (
			SELECT
				PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY x."DecimalValue") as "c1"
			FROM
				"WindowFunctionTestEntity" x
			WHERE
				x."Id" > t."Id" AND x."DecimalValue" > 1
		) t1

