BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	d."Day_2"
FROM
	(
		SELECT
			EXTRACT(DAY FROM TO_TIMESTAMP(EXTRACT(YEAR FROM t."DateTimeValue") || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS')) as "Day_1",
			TO_TIMESTAMP(EXTRACT(YEAR FROM t."DateTimeValue") || '-02-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS') as "Day_2"
		FROM
			"LinqDataTypes" t
	) d
WHERE
	d."Day_1" > 0 AND d."Day_1" IS NOT NULL

