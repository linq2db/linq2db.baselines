-- Oracle.11.Managed Oracle11

SELECT
	Coalesce(LISTAGG(Coalesce(t1."NullableValue", ''), ', ') WITHIN GROUP (ORDER BY t1."NullableValue"), '')
FROM
	(
		SELECT
			x."NullableValue"
		FROM
			"SampleClass" x
		WHERE
			x."NullableValue" IS NOT NULL AND x."NullableValue" IN ('A', 'B')
		ORDER BY
			x."NotNullableValue"
	) t1

