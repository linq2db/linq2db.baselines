BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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

