BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN ("i"."BoolValue" = 0 AND "i"."BoolValue" IS NOT NULL OR "i"."BoolValue" IS NULL OR CASE
			WHEN "i"."BoolValue" IS NOT NULL THEN "i"."BoolValue"
			ELSE 0
		END IS NULL) AND ("i"."IntValue" = (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
			FETCH NEXT 1 ROWS ONLY
		) OR "i"."IntValue" IS NULL AND (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
			FETCH NEXT 1 ROWS ONLY
		) IS NULL)
			THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" "i"
WHERE
	"i".ID = 1

