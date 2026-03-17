-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN ("i"."BoolValue" IS NULL OR "i"."BoolValue" = 0) AND ("i"."IntValue" = (
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

