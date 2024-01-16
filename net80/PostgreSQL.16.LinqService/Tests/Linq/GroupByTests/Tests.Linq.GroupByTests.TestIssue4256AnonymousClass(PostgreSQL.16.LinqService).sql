BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."IsActive",
	t1."Other"
FROM
	(
		SELECT
			True as "IsActive",
			CASE
				WHEN it."SmallIntValue" <> 0
					THEN True
				ELSE False
			END as "Other"
		FROM
			"LinqDataTypes" it
	) t1
GROUP BY
	t1."IsActive",
	t1."Other"

