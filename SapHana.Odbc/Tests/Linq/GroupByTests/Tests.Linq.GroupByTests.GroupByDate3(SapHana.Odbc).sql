-- SapHana.Odbc SapHanaOdbc

SELECT
	SUM("grp_1"."MoneyValue"),
	Year("grp_1"."c1"),
	Month("grp_1"."c1")
FROM
	(
		SELECT
			To_Timestamp(LPad(Year("grp"."DateTimeValue"), 4, '0') || '-' || LPad(Month("grp"."DateTimeValue"), 2, '0') || '-01 00:00:00.000') as "c1",
			"grp"."MoneyValue"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."c1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	SUM("grp_1"."MoneyValue"),
	Year("grp_1"."c1"),
	Month("grp_1"."c1")
FROM
	(
		SELECT
			To_Timestamp(LPad(Year("grp"."DateTimeValue"), 4, '0') || '-' || LPad(Month("grp"."DateTimeValue"), 2, '0') || '-01 00:00:00.000') as "c1",
			"grp"."MoneyValue"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."c1"

