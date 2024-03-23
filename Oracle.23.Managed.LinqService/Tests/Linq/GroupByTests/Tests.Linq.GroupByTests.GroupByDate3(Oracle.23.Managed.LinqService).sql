BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	SUM(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_1"
FROM
	(
		SELECT
			TO_DATE(Lpad(To_Number(To_Char(grp."DateTimeValue", 'YYYY')),4,'0') || '-' || Lpad(To_Number(To_Char(grp."DateTimeValue", 'MM')),2,'0') || '-01', 'YYYY-MM-DD') as "c1",
			grp."MoneyValue",
			To_Number(To_Char(TO_DATE(Lpad(To_Number(To_Char(grp."DateTimeValue", 'YYYY')),4,'0') || '-' || Lpad(To_Number(To_Char(grp."DateTimeValue", 'MM')),2,'0') || '-01', 'YYYY-MM-DD'), 'YYYY')) as "Year_1",
			To_Number(To_Char(TO_DATE(Lpad(To_Number(To_Char(grp."DateTimeValue", 'YYYY')),4,'0') || '-' || Lpad(To_Number(To_Char(grp."DateTimeValue", 'MM')),2,'0') || '-01', 'YYYY-MM-DD'), 'MM')) as "Month_1"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."c1",
	grp_1."Year_1",
	grp_1."Month_1"

