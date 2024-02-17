BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	c_2."Count_1"
FROM
	(
		SELECT
			Count(*) as "Count_1"
		FROM
			"Child" c_1
		GROUP BY
			c_1."ParentID"
	) c_2
WHERE
	c_2."Count_1" > 1

