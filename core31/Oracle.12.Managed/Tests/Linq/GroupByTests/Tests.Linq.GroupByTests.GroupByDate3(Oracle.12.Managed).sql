BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Sum(t1."MoneyValue"),
	To_Number(To_Char(t1."Key_1", 'YYYY')),
	To_Number(To_Char(t1."Key_1", 'MM'))
FROM
	(
		SELECT
			TO_DATE(Lpad(To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')),4,'0') || '-' || Lpad(To_Number(To_Char(selectParam."DateTimeValue", 'MM')),2,'0') || '-01', 'YYYY-MM-DD') as "Key_1",
			selectParam."MoneyValue"
		FROM
			"LinqDataTypes" selectParam
	) t1
GROUP BY
	t1."Key_1"

