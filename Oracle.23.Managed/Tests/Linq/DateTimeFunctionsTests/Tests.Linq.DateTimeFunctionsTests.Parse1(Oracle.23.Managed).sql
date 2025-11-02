-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(d."DateTimeValue")
FROM
	"LinqDataTypes" d
WHERE
	EXTRACT(DAY FROM d."DateTimeValue") > 0

