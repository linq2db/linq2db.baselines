-- PostgreSQL.18 PostgreSQL

SELECT
	t_1."ID",
	DENSE_RANK() OVER(ORDER BY t_1."ID")
FROM
	(
		SELECT
			t."PersonID" as "ID"
		FROM
			"Person" t
		WHERE
			t."PersonID" = 1
		UNION ALL
		SELECT
			p."PersonID" as "ID"
		FROM
			"Person" p
		WHERE
			p."PersonID" <> 1
	) t_1

