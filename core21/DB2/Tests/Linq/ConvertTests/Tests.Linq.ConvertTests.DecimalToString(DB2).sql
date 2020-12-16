BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Strip(RTrim(Char("t"."MoneyValue")), L, '0')
FROM
	"LinqDataTypes" "t"
WHERE
	CHARACTER_LENGTH(Strip(RTrim(Char("t"."MoneyValue")), L, '0'),CODEUNITS32) > 0

