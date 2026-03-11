-- Firebird.5 Firebird4

SELECT
	Coalesce("t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || ', ' || Coalesce("t"."VarcharValue", '') || ', ' || Coalesce("t"."NVarcharValue", ''),
	(
		SELECT
			Coalesce(LIST(Coalesce("t2"."AggregatedNotNullFilteredDistinct", ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					"t1"."item" as "AggregatedNotNullFilteredDistinct"
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
				ORDER BY
					"t1"."item"
			) "t2"
	),
	(
		SELECT
			Coalesce(LIST(Coalesce("t5"."AggregatedFilteredDistinct", ''), ', '), '')
		FROM
			(
				SELECT
					"t4"."AggregatedFilteredDistinct"
				FROM
					(
						SELECT DISTINCT
							"t3"."item" as "AggregatedFilteredDistinct"
						FROM
							(
								SELECT "t"."NotNullableValue" AS "item" FROM rdb$database
								UNION ALL
								SELECT "t"."NotNullableValue" FROM rdb$database
								UNION ALL
								SELECT "t"."NotNullableValue" FROM rdb$database
								UNION ALL
								SELECT "t"."NVarcharValue" FROM rdb$database) "t3"
						WHERE
							"t3"."item" <> 'A' OR "t3"."item" IS NULL
					) "t4"
				ORDER BY
					CASE
						WHEN "t4"."AggregatedFilteredDistinct" IS NULL THEN 0
						ELSE 1
					END,
					"t4"."AggregatedFilteredDistinct"
			) "t5"
	)
FROM
	"SampleClass" "t"

-- Firebird.5 Firebird4

SELECT
	"t1".PK,
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

