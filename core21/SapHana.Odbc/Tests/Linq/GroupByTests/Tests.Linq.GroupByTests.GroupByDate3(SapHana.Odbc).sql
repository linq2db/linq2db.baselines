BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Sum("selectParam"."MoneyValue"),
	Year(Cast((Cast(Year("selectParam"."DateTimeValue") as VarChar(11)) || '-' || Cast(Month("selectParam"."DateTimeValue") as VarChar(11)) || '-1') as Date)),
	Month(Cast((Cast(Year("selectParam"."DateTimeValue") as VarChar(11)) || '-' || Cast(Month("selectParam"."DateTimeValue") as VarChar(11)) || '-1') as Date))
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Cast((Cast(Year("selectParam"."DateTimeValue") as VarChar(11)) || '-' || Cast(Month("selectParam"."DateTimeValue") as VarChar(11)) || '-1') as Date)

