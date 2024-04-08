BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	b_1."Date_2",
	COUNT(*)
FROM
	(
		SELECT
			Date_Trunc('day', b."DateTimeValue") as "Date_1",
			Date_Trunc('day', b."DateTimeValue") as "Date_2"
		FROM
			"LinqDataTypes" b
				INNER JOIN "Parent" p ON b."ID" = p."ParentID"
	) b_1
GROUP BY
	b_1."Date_1",
	b_1."Date_2"

