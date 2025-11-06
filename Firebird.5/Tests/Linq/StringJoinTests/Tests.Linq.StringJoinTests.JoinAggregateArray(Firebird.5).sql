-- Firebird.5 Firebird4

SELECT
	Coalesce("t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || ', ' || Coalesce("t"."VarcharValue", '') || ', ' || Coalesce("t"."NVarcharValue", ''),
	"t4"."Join_1",
	"t8"."Join_1"
FROM
	"SampleClass" "t"
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t3"."item_1", ''), ', '), '') as "Join_1"
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
		) "t4" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(LIST(Coalesce("t7"."item_1", ''), ', '), '') as "Join_1"
			FROM
				(
					SELECT
						"t6"."item_1"
					FROM
						(
							SELECT DISTINCT
								"t5"."item" as "item_1"
							FROM
								(
									SELECT "t"."NotNullableValue" AS "item" FROM rdb$database
									UNION ALL
									SELECT "t"."NotNullableValue" FROM rdb$database
									UNION ALL
									SELECT "t"."NotNullableValue" FROM rdb$database
									UNION ALL
									SELECT "t"."NVarcharValue" FROM rdb$database) "t5"
							WHERE
								"t5"."item" <> 'A' OR "t5"."item" IS NULL
						) "t6"
					ORDER BY
						CASE
							WHEN "t6"."item_1" IS NULL THEN 0
							ELSE 1
						END,
						"t6"."item_1"
				) "t7"
		) "t8" ON 1=1

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

