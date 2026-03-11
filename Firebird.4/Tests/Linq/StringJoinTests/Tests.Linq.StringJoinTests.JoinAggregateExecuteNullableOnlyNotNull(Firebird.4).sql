-- Firebird.4 Firebird4

SELECT
	Coalesce(LIST("t2"."NullableValue", ', '), '')
FROM
	(
		SELECT
			"t1"."NullableValue"
		FROM
			"SampleClass" "t1"
		ORDER BY
			"t1"."NotNullableValue"
	) "t2"

