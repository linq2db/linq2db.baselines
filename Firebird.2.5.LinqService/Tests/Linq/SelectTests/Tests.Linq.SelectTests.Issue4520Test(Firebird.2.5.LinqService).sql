BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN ("i"."BoolValue" = '0' AND "i"."BoolValue" IS NOT NULL AND "i"."BoolValue" IS NOT NULL OR CASE
			WHEN "i"."BoolValue" IS NOT NULL THEN "i"."BoolValue"
			ELSE '0'
		END IS NULL) AND ("i"."IntValue" = (
			SELECT FIRST 1
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
		) AND "i"."IntValue" IS NOT NULL AND (
			SELECT FIRST 1
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
		) IS NOT NULL OR "i"."IntValue" IS NULL AND (
			SELECT FIRST 1
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
		) IS NULL)
			THEN '1'
		ELSE '0'
	END
FROM
	"LinqDataTypes" "i"
WHERE
	"i".ID = 1

