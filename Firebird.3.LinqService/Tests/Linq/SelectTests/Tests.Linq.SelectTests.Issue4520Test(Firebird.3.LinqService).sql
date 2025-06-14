BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN NOT CASE
			WHEN "i"."BoolValue" IS NOT NULL THEN "i"."BoolValue"
			ELSE FALSE
		END AND CASE
			WHEN "i"."IntValue" <> (
				SELECT
					"p"."IntValue"
				FROM
					"LinqDataTypes" "p"
				WHERE
					"p".ID = 2
				FETCH NEXT 1 ROWS ONLY
			)
				THEN FALSE
			ELSE TRUE
		END
			THEN TRUE
		ELSE FALSE
	END
FROM
	"LinqDataTypes" "i"
WHERE
	"i".ID = 1

