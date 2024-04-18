BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "t"."MoneyValue" <> 0
			THEN TRUE
		ELSE FALSE
	END
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."MoneyValue" <> 0

