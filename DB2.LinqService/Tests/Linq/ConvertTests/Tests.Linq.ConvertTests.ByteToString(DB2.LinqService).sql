BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(RTrim(Char(CAST("p".ID AS SmallInt)))) > 0

