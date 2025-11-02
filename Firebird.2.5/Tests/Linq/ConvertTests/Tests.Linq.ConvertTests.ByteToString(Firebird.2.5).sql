-- Firebird.2.5 Firebird

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(CAST("p".ID AS SmallInt)) > 0

