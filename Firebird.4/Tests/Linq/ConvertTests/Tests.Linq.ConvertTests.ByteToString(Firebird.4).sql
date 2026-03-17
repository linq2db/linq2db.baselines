-- Firebird.4 Firebird4

SELECT
	CAST("p".ID AS SmallInt)
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(CAST("p".ID AS SmallInt)) > 0

