BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as c1
		FROM
			"Person" r
		GROUP BY
			r."PersonID",
			r."PersonID"
	) t1

