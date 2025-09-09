BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(CAST("p".ID AS SmallInt)) > 0

