-- Firebird.5 Firebird4

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(CAST("p".ID AS SmallInt)) > 0

