-- Firebird.4 Firebird4

SELECT
	Coalesce("t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || ', ' || Coalesce("t"."VarcharValue", '') || ', ' || Coalesce("t"."NVarcharValue", ''),
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."item_1", ''), ', '), '')
		FROM
			(
				SELECT
					"t2"."item_1"
				FROM
					(
						SELECT DISTINCT
							"t1"."item" as "item_1"
						FROM
							(
								SELECT "t"."NotNullableValue" AS "item" FROM rdb$database
								UNION ALL
								SELECT "t"."NotNullableValue" FROM rdb$database
								UNION ALL
								SELECT "t"."NotNullableValue" FROM rdb$database
								UNION ALL
								SELECT "t"."NVarcharValue" FROM rdb$database) "t1"
						WHERE
							"t1"."item" IS NOT NULL
					) "t2"
				ORDER BY
					"t2"."item_1"
			) "t3"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t6"."item_1", ''), ', '), '')
		FROM
			(
				SELECT
					"t5"."item_1"
				FROM
					(
						SELECT DISTINCT
							"t4"."item" as "item_1"
						FROM
							(
								SELECT "t"."NotNullableValue" AS "item" FROM rdb$database
								UNION ALL
								SELECT "t"."NotNullableValue" FROM rdb$database
								UNION ALL
								SELECT "t"."NotNullableValue" FROM rdb$database
								UNION ALL
								SELECT "t"."NVarcharValue" FROM rdb$database) "t4"
						WHERE
							"t4"."item" <> 'A' OR "t4"."item" IS NULL
					) "t5"
				ORDER BY
					CASE
						WHEN "t5"."item_1" IS NULL THEN 0
						ELSE 1
					END,
					"t5"."item_1"
			) "t6"
	)
FROM
	"SampleClass" "t"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

