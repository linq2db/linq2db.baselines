BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	SUM(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_1"
FROM
	(
		SELECT
			TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM grp."DateTimeValue") AS VarChar(4)), 4, '0') || '-' || LPad(CAST(EXTRACT(MONTH FROM grp."DateTimeValue") AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3') as "Date_1",
			grp."MoneyValue",
			EXTRACT(YEAR FROM TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM grp."DateTimeValue") AS VarChar(4)), 4, '0') || '-' || LPad(CAST(EXTRACT(MONTH FROM grp."DateTimeValue") AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')) as "Year_1",
			EXTRACT(MONTH FROM TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM grp."DateTimeValue") AS VarChar(4)), 4, '0') || '-' || LPad(CAST(EXTRACT(MONTH FROM grp."DateTimeValue") AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')) as "Month_1"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Date_1",
	grp_1."Year_1",
	grp_1."Month_1"

