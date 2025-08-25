BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(CAST ((t."DateTimeValue" + 100D * INTERVAL '1' HOUR) as DATE) - CAST (t."DateTimeValue" as DATE))
FROM
	"LinqDataTypes" t

