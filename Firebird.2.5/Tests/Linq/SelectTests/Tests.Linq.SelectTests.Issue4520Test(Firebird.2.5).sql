BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "i"."BoolValue" = '0' AND "i"."BoolValue" IS NOT NULL AND CASE
			WHEN "i"."IntValue" <> (
				SELECT FIRST 1
					"p"."IntValue"
				FROM
					"LinqDataTypes" "p"
				WHERE
					"p".ID = 2
			)
				THEN '0'
			ELSE '1'
		END = '1'
			THEN '1'
		ELSE '0'
	END
FROM
	"LinqDataTypes" "i"
WHERE
	"i".ID = 1

