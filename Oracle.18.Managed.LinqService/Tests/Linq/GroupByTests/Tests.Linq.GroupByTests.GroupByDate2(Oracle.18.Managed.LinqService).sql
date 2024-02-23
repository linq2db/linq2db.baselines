BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Sum(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_1"
FROM
	(
		SELECT
			To_Number(To_Char(grp."DateTimeValue", 'MM')) as "Month_1",
			To_Number(To_Char(grp."DateTimeValue", 'YYYY')) as "Year_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Month_1",
	grp_1."Year_1"

