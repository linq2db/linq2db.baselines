BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	SUM("grp_1"."MoneyValue"),
	"grp_1"."Year_1",
	"grp_1"."Month_1"
FROM
	(
		SELECT
			CAST(LPad(Extract(year from "grp"."DateTimeValue"), 4, '0') || '-' || LPad(Extract(month from "grp"."DateTimeValue"), 2, '0') || '-01' AS timestamp) as "Date_1",
			"grp"."MoneyValue",
			Extract(year from "grp_1"."Date_1") as "Year_1",
			Extract(month from "grp_1"."Date_1") as "Month_1"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."Date_1"

