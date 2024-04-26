BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST("p".ID AS SmallInt)
FROM
	"LinqDataTypes" "p"
WHERE
	Char_Length(CAST("p".ID AS SmallInt)) > 0

