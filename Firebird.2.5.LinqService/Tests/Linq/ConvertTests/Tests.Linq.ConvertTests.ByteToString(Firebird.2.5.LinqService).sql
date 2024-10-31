BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	Char_Length(CAST("p".ID AS SmallInt)) > 0

