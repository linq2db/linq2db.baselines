BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST("p".ID AS SmallInt)
FROM
	"LinqDataTypes" "p"
WHERE
	Char_Length(CAST("p".ID AS SmallInt)) > 0

