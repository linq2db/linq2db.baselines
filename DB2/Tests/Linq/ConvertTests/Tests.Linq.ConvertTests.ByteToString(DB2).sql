BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	RTrim(Char(CAST("p".ID AS SmallInt)))
FROM
	"LinqDataTypes" "p"
WHERE
	CHARACTER_LENGTH(RTrim(Char(CAST("p".ID AS SmallInt))),CODEUNITS32) > 0

