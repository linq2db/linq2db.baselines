BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

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

