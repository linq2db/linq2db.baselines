BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Key_1"
FROM
	(
		SELECT
			To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as "Key_1"
		FROM
			"LinqDataTypes" selectParam
	) t1
GROUP BY
	t1."Key_1"

