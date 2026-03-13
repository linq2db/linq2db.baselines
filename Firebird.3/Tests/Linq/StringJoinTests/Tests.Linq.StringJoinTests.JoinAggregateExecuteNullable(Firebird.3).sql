-- Firebird.3 Firebird3

SELECT
	LIST(Coalesce("t2"."NullableValue", ''), ', ')
FROM
	(
		SELECT
			"t1"."NullableValue"
		FROM
			"SampleClass" "t1"
		ORDER BY
			"t1"."NotNullableValue"
	) "t2"

