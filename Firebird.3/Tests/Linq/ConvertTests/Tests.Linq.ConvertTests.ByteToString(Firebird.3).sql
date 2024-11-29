BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	Char_Length(CAST("p".ID AS SmallInt)) > 0

