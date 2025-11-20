-- Firebird.3 Firebird3

SELECT
	CAST("p".ID AS SmallInt)
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(CAST("p".ID AS SmallInt)) > 0

