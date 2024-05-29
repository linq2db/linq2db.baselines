BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Strip(RTrim(Char("p"."MoneyValue")), L, '0')
FROM
	"LinqDataTypes" "p"
WHERE
	CHARACTER_LENGTH(Strip(RTrim(Char("p"."MoneyValue")), L, '0'),CODEUNITS32) > 0

