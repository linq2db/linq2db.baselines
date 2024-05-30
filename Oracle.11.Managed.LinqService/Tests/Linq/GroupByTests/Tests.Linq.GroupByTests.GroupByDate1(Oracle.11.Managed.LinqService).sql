BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	SUM(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_1"
FROM
	(
		SELECT
			EXTRACT(MONTH FROM grp."DateTimeValue") as "Month_1",
			EXTRACT(YEAR FROM grp."DateTimeValue") as "Year_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Month_1",
	grp_1."Year_1"

