BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	d."Date_1"
FROM
	(
		SELECT
			EXTRACT(DAY FROM t."DateTimeValue") as "Day_1",
			TRUNC(t."DateTimeValue") as "Date_1"
		FROM
			"LinqDataTypes" t
	) d
WHERE
	d."Day_1" > 0 AND d."Day_1" IS NOT NULL

