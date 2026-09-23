-- SapHana.Odbc SapHanaOdbc
SELECT
	SUM("grp_1"."MoneyValue"),
	Year(Coalesce("grp_1"."c1", TIMESTAMP '0001-01-01 00:00:00.0000000')),
	Month(Coalesce("grp_1"."c1", TIMESTAMP '0001-01-01 00:00:00.0000000'))
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
	Year(Coalesce("grp_1"."c1", TIMESTAMP '0001-01-01 00:00:00.0000000')),
	Month(Coalesce("grp_1"."c1", TIMESTAMP '0001-01-01 00:00:00.0000000'))
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

