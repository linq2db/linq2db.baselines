BeforeExecute
-- Oracle.11.Managed Oracle11

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

