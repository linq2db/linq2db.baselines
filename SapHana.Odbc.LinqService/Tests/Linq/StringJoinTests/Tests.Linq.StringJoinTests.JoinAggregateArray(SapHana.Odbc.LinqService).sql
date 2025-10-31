BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Coalesce("t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || ', ' || Coalesce("t"."VarcharValue", '') || ', ' || Coalesce("t"."NVarcharValue", ''),
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce("t2"."item_1", ''), ', ' ORDER BY "t2"."item_1" NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					"t1"."item" as "item_1"
				FROM
					(
						SELECT "t"."NotNullableValue" AS "item" FROM DUMMY
						UNION ALL
						SELECT "t"."NotNullableValue" FROM DUMMY
						UNION ALL
						SELECT "t"."NotNullableValue" FROM DUMMY
						UNION ALL
						SELECT "t"."NVarcharValue" FROM DUMMY) "t1"
				WHERE
					"t1"."item" IS NOT NULL
			) "t2"
	),
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce("t4"."item_1", ''), ', ' ORDER BY CASE
				WHEN "t4"."item_1" IS NULL THEN 0
				ELSE 1
			END NULLS FIRST, "t4"."item_1" NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					"t3"."item" as "item_1"
				FROM
					(
						SELECT "t"."NotNullableValue" AS "item" FROM DUMMY
						UNION ALL
						SELECT "t"."NotNullableValue" FROM DUMMY
						UNION ALL
						SELECT "t"."NotNullableValue" FROM DUMMY
						UNION ALL
						SELECT "t"."NVarcharValue" FROM DUMMY) "t3"
				WHERE
					"t3"."item" <> 'A' OR "t3"."item" IS NULL
			) "t4"
	)
FROM
	"SampleClass" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

