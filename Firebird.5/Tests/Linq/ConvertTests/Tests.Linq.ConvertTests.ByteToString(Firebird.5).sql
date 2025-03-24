BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	Char_Length(CAST("p".ID AS SmallInt)) > 0

