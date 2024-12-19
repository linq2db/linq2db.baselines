BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	RTRIM(REPLACE(Strip(RTrim(Char("p"."MoneyValue")), L, '0'), RTrim(Char(',')), RTrim(Char('.'))), '0.')
FROM
	"LinqDataTypes" "p"
WHERE
	CHARACTER_LENGTH(Strip(RTrim(Char("p"."MoneyValue")), L, '0'),CODEUNITS32) > 0

