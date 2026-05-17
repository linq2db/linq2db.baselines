-- DB2 DB2.LUW DB2LUW

SELECT
	RTRIM(Replace(RTrim(Char("p"."MoneyValue")), RTrim(Char(',')), RTrim(Char('.'))), '0.')
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH(RTrim(Char("p"."MoneyValue"))) > 0

