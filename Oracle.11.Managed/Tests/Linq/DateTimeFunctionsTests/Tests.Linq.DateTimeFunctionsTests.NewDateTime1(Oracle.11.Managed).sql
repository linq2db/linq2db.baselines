BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_DATE(Lpad(To_Number(To_Char(p."DateTimeValue", 'YYYY')),4,'0') || '-10-01', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	To_Number(To_Char(t."c1", 'MM')) = 10

