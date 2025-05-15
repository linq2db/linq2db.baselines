BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN (CASE
			WHEN "i"."BoolValue" = 1 THEN 1
			WHEN "i"."BoolValue" = 0 THEN 0
			ELSE NULL
		END = 0 OR "i"."BoolValue" IS NULL) AND ("i"."IntValue" = (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p"."ID" = 2
			LIMIT 1
		) OR "i"."IntValue" IS NULL AND (
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

