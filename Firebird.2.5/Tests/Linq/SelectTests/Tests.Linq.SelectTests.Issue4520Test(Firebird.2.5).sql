-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "i"."BoolValue" = '0' AND ("i"."IntValue" = (
			SELECT FIRST 1
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
		) OR "i"."IntValue" IS NULL AND (
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

