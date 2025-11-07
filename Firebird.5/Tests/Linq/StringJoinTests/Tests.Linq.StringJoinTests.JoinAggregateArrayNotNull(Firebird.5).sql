-- Firebird.5 Firebird4

SELECT
	SUBSTRING(Coalesce(', ' || "t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || Coalesce(', ' || "t"."VarcharValue", '') || Coalesce(', ' || "t"."NVarcharValue", '') FROM 3),
	"t4"."Join_1"
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
						"t2"."item_1"
				) "t3"
		) "t4" ON 1=1

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

