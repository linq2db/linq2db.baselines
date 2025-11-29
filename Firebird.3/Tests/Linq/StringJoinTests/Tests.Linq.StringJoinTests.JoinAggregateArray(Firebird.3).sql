-- Firebird.3 Firebird3

SELECT
	Coalesce("t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || ', ' || Coalesce("t"."VarcharValue", '') || ', ' || Coalesce("t"."NVarcharValue", ''),
	(
		SELECT
			Coalesce(LIST(Coalesce("t3"."AggregatedNotNullFilteredDi", ''), ', '), '')
		FROM
			(
				SELECT
					"t2"."AggregatedNotNullFilteredDi"
				FROM
					(
						SELECT DISTINCT
							"t1"."item" as "AggregatedNotNullFilteredDi"
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
					"t2"."AggregatedNotNullFilteredDi"
			) "t3"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t6"."AggregatedFilteredDistinct", ''), ', '), '')
		FROM
			(
				SELECT
					"t5"."AggregatedFilteredDistinct"
				FROM
					(
						SELECT DISTINCT
							"t4"."item" as "AggregatedFilteredDistinct"
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
						WHEN "t5"."AggregatedFilteredDistinct" IS NULL THEN 0
						ELSE 1
					END,
					"t5"."AggregatedFilteredDistinct"
			) "t6"
	)
FROM
	"SampleClass" "t"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

