BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_TIMESTAMP(Lpad(To_Number(To_Char(p."DateTimeValue", 'YYYY')),4,'0') || '-10-01 20:35:44', 'YYYY-MM-DD HH24:MI:SS') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	To_Number(To_Char(t."c1", 'MM')) = 10

