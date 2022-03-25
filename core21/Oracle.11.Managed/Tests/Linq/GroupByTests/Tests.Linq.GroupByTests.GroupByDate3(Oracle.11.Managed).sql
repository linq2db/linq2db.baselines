BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Sum(t1."MoneyValue"),
	To_Number(To_Char(t1."c1", 'YYYY')),
	To_Number(To_Char(t1."c1", 'MM'))
FROM
	(
		SELECT
			TO_DATE(CASE
				WHEN To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) IS NULL
					THEN ''
				ELSE Cast(To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as VarChar2(11))
			END || '-' || CASE
				WHEN To_Number(To_Char(selectParam."DateTimeValue", 'MM')) IS NULL
					THEN ''
				ELSE Cast(To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as VarChar2(11))
			END || '-1', 'YYYY-MM-DD') as "Key_1",
			selectParam."MoneyValue",
			TO_DATE(CASE
				WHEN To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) IS NULL
					THEN ''
				ELSE Cast(To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as VarChar2(11))
			END || '-' || CASE
				WHEN To_Number(To_Char(selectParam."DateTimeValue", 'MM')) IS NULL
					THEN ''
				ELSE Cast(To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as VarChar2(11))
			END || '-1', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" selectParam
	) t1
GROUP BY
	t1."Key_1"

