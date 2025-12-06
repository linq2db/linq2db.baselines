-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	SUM(grp_1."MoneyValue"),
	EXTRACT(YEAR FROM grp_1."Date_1"),
	EXTRACT(MONTH FROM grp_1."Date_1")
FROM
	(
		SELECT
			TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM grp."DateTimeValue") AS VarChar(4)), 4, '0') || '-' || LPad(CAST(EXTRACT(MONTH FROM grp."DateTimeValue") AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3') as "Date_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Date_1"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	SUM(grp_1."MoneyValue"),
	EXTRACT(YEAR FROM grp_1."Date_1"),
	EXTRACT(MONTH FROM grp_1."Date_1")
FROM
	(
		SELECT
			TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM grp."DateTimeValue") AS VarChar(4)), 4, '0') || '-' || LPad(CAST(EXTRACT(MONTH FROM grp."DateTimeValue") AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3') as "Date_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Date_1"

