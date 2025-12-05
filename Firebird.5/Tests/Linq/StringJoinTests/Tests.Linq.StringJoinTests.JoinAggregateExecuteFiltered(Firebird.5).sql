-- Firebird.5 Firebird4

SELECT
	Coalesce(LIST(Coalesce("t1"."NullableValue", ''), ', '), '')
FROM
	(
		SELECT
			"x"."NullableValue"
		FROM
			"SampleClass" "x"
		WHERE
			"x"."NullableValue" IS NOT NULL AND "x"."NullableValue" IN ('A', 'B')
		ORDER BY
			"x"."NotNullableValue"
	) "t1"

