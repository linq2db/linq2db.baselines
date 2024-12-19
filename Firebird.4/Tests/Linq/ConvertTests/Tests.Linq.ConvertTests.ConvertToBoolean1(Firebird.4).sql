BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "t"."MoneyValue" <> 0 THEN TRUE
				ELSE FALSE
			END as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" = TRUE

