BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN ("i"."BoolValue" = 0 AND "i"."BoolValue" IS NOT NULL AND "i"."BoolValue" IS NOT NULL OR "i"."BoolValue" IS NULL OR CASE
			WHEN "i"."BoolValue" IS NOT NULL THEN "i"."BoolValue"
			ELSE 0
		END IS NULL) AND ("i"."IntValue" = (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p"."ID" = 2
			LIMIT 1
		) AND "i"."IntValue" IS NOT NULL AND (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p"."ID" = 2
			LIMIT 1
		) IS NOT NULL OR "i"."IntValue" IS NULL AND (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p"."ID" = 2
			LIMIT 1
		) IS NULL)
			THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" "i"
WHERE
	"i"."ID" = 1

