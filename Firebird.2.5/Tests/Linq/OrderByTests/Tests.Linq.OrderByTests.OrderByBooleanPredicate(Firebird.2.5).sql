-- Firebird.2.5 Firebird
SELECT
	"t".ID
FROM
	"LinqDataTypes" "t"
ORDER BY
	CASE
		WHEN "t".ID > 5 THEN '1'
		ELSE '0'
	END,
	"t".ID

