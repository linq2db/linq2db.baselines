BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"p".ID
FROM
	"LinqDataTypes" "p"
WHERE
	CHARACTER_LENGTH(RTrim(Char(CAST("p".ID AS SmallInt))),CODEUNITS32) > 0

