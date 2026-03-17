-- Firebird.2.5 Firebird

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

