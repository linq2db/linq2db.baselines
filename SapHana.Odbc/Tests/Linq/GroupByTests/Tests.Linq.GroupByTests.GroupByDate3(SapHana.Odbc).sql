BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	SUM("grp_1"."MoneyValue"),
	"grp_1"."Year_1",
	"grp_1"."Month_1"
FROM
	(
		SELECT
			To_Timestamp(LPad(Year("grp"."DateTimeValue"), 4, '0') || '-' || LPad(Month("grp"."DateTimeValue"), 2, '0') || '-01 00:00:00.000') as "Date_1",
			"grp"."MoneyValue",
			Year(To_Timestamp(LPad(Year("grp"."DateTimeValue"), 4, '0') || '-' || LPad(Month("grp"."DateTimeValue"), 2, '0') || '-01 00:00:00.000')) as "Year_1",
			Month(To_Timestamp(LPad(Year("grp"."DateTimeValue"), 4, '0') || '-' || LPad(Month("grp"."DateTimeValue"), 2, '0') || '-01 00:00:00.000')) as "Month_1"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."Date_1",
	"grp_1"."Year_1",
	"grp_1"."Month_1"

