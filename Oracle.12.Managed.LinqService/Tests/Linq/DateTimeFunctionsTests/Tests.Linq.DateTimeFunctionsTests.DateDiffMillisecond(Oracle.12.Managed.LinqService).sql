BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	1000 * (EXTRACT(SECOND FROM CAST ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) as TIMESTAMP) - CAST (t."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) as TIMESTAMP) - CAST (t."DateTimeValue" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) as TIMESTAMP) - CAST (t."DateTimeValue" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST ((t."DateTimeValue" + 2023456789D * INTERVAL '0.001' SECOND) as TIMESTAMP) - CAST (t."DateTimeValue" as TIMESTAMP)))))
FROM
	"LinqDataTypes" t

