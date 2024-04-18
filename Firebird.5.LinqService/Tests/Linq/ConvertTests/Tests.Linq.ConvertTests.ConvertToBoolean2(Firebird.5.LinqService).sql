BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "t"."MoneyValue" <> 4.5
			THEN TRUE
		ELSE FALSE
	END
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."MoneyValue" = 4.5

