BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	SUM("grp_1"."MoneyValue"),
	"grp_1"."Year_1",
	"grp_1"."Month_1"
FROM
	(
		SELECT
			Cast((Lpad(Year("grp"."DateTimeValue"),4,'0') || '-' || Lpad(Month("grp"."DateTimeValue"),2,'0') || '-01') as Date) as "c1",
			"grp"."MoneyValue",
			Year(Cast((Lpad(Year("grp"."DateTimeValue"),4,'0') || '-' || Lpad(Month("grp"."DateTimeValue"),2,'0') || '-01') as Date)) as "Year_1",
			Month(Cast((Lpad(Year("grp"."DateTimeValue"),4,'0') || '-' || Lpad(Month("grp"."DateTimeValue"),2,'0') || '-01') as Date)) as "Month_1"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."c1",
	"grp_1"."Year_1",
	"grp_1"."Month_1"

