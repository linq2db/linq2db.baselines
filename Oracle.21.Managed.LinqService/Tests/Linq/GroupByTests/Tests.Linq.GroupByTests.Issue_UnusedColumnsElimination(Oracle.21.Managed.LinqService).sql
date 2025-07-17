BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Person" r
		GROUP BY
			r."PersonID",
			r."PersonID"
	) t1

