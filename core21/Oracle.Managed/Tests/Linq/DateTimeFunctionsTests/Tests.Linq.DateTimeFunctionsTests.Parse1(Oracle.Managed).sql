BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	d.DateTimeValue
FROM
	LinqDataTypes d
WHERE
	To_Number(To_Char(d.DateTimeValue, 'DD')) > 0

