-- SapHana.Odbc SapHanaOdbc

SELECT
	SUBSTRING(Coalesce(', ' || "t"."NullableValue", '') || ', ' || "t"."NotNullableValue" || Coalesce(', ' || "t"."VarcharValue", '') || Coalesce(', ' || "t"."NVarcharValue", ''), 3),
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce("t2"."NotNullDistinctValue", ''), ', ' ORDER BY "t2"."NotNullDistinctValue" NULLS FIRST), '')
		FROM
			(
				SELECT DISTINCT
					"t1"."item" as "NotNullDistinctValue"
				FROM
					(
						SELECT "t"."NullableValue" AS "item" FROM DUMMY
						UNION ALL
						SELECT "t"."NotNullableValue" FROM DUMMY
						UNION ALL
						SELECT "t"."VarcharValue" FROM DUMMY
						UNION ALL
						SELECT "t"."NVarcharValue" FROM DUMMY) "t1"
				WHERE
					"t1"."item" IS NOT NULL
			) "t2"
	)
FROM
	"SampleClass" "t"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."NullableValue",
	"t1"."NotNullableValue",
	"t1"."VarcharValue",
	"t1"."NVarcharValue"
FROM
	"SampleClass" "t1"

