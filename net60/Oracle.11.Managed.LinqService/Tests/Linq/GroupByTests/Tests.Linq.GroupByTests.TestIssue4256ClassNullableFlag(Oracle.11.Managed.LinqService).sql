BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."IsActive",
	t1."Other"
FROM
	(
		SELECT
			1 as "IsActive",
			CASE
				WHEN it."SmallIntValue" <> 0
					THEN 1
				ELSE 0
			END as "Other"
		FROM
			"LinqDataTypes" it
	) t1
GROUP BY
	t1."IsActive",
	t1."Other"

