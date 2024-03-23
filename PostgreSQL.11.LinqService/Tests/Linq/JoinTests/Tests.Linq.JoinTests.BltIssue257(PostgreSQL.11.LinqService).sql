BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	b_1."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			Cast(b."DateTimeValue" as Date) as "Date_1"
		FROM
			"LinqDataTypes" b
				INNER JOIN "Parent" p ON b."ID" = p."ParentID"
	) b_1
GROUP BY
	b_1."Date_1"

