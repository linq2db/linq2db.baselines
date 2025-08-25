BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CASE
		WHEN NOT CASE
			WHEN "i"."BoolValue" IS NOT NULL THEN "i"."BoolValue"
			ELSE FALSE
		END AND ("i"."IntValue" = (
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
			THEN TRUE
		ELSE FALSE
	END
FROM
	"LinqDataTypes" "i"
WHERE
	"i".ID = 1

