-- Firebird.2.5 Firebird

SELECT
	SUBSTRING(Coalesce(', ' || "t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || Coalesce(', ' || "t"."VarcharValue", '') || Coalesce(', ' || "t"."NVarcharValue", '') FROM 3),
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."NotNullDistinctValue", ''), ', '), '')
		FROM
			(
				SELECT
					"t2"."NotNullDistinctValue"
				FROM
					(
						SELECT DISTINCT
							"t1"."item" as "NotNullDistinctValue"
						FROM
							(
								SELECT "t"."NullableValue" AS "item" FROM rdb$database
								UNION ALL
								SELECT "t"."NotNullableValue" FROM rdb$database
								UNION ALL
								SELECT "t"."VarcharValue" FROM rdb$database
								UNION ALL
								SELECT "t"."NVarcharValue" FROM rdb$database) "t1"
						WHERE
							"t1"."item" IS NOT NULL
					) "t2"
				ORDER BY
					"t2"."NotNullDistinctValue"
			) "t3"
	)
FROM
	"SampleClass" "t"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

