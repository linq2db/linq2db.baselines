BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	TRUNC(d."DateTimeValue")
FROM
	"LinqDataTypes" d
WHERE
	EXTRACT(DAY FROM d."DateTimeValue") > 0

