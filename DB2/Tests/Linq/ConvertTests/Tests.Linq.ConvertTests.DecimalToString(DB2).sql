-- DB2 DB2.LUW DB2LUW

SELECT
	RTRIM(Replace(Strip(RTrim(Char("p"."MoneyValue")), L, '0'), RTrim(Char(',')), RTrim(Char('.'))), '0.')
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(Strip(RTrim(Char("p"."MoneyValue")), L, '0')) > 0

