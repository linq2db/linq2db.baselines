BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Sum("selectParam"."MoneyValue"),
	To_Number(To_Char(Date(RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')))) || '-' || RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'MM')))) || '-1'), 'YYYY')),
	To_Number(To_Char(Date(RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')))) || '-' || RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'MM')))) || '-1'), 'MM'))
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Date(RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')))) || '-' || RTrim(Char(To_Number(To_Char("selectParam"."DateTimeValue", 'MM')))) || '-1')

