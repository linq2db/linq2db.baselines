-- DB2 DB2.LUW DB2LUW

SELECT
	SUM("grp_1"."MoneyValue"),
	Extract(year from "grp_1"."c1"),
	Extract(month from "grp_1"."c1")
FROM
	(
		SELECT
			CAST(LPad(Extract(year from "grp"."DateTimeValue"), 4, '0') || '-' || LPad(Extract(month from "grp"."DateTimeValue"), 2, '0') || '-01' AS timestamp) as "c1",
			"grp"."MoneyValue"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."c1"

-- DB2 DB2.LUW DB2LUW

SELECT
	SUM("grp_1"."MoneyValue"),
	Extract(year from "grp_1"."c1"),
	Extract(month from "grp_1"."c1")
FROM
	(
		SELECT
			CAST(LPad(Extract(year from "grp"."DateTimeValue"), 4, '0') || '-' || LPad(Extract(month from "grp"."DateTimeValue"), 2, '0') || '-01' AS timestamp) as "c1",
			"grp"."MoneyValue"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."c1"

