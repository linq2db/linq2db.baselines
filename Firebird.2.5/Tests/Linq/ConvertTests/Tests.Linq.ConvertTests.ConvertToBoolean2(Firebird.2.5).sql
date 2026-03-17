-- Firebird.2.5 Firebird

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "t"."MoneyValue" <> 4.5 THEN '1'
				ELSE '0'
			END as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" = '0'

