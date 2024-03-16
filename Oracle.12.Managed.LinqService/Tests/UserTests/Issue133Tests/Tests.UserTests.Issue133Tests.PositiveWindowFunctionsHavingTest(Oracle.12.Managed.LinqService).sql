BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	(Cast(t2."Count_1" as Float) * 100D) / SUM(t2."Count_1") OVER(),
	t2."Sum_1"
FROM
	(
		SELECT
			Count(*) as "Count_1",
			Sum(t1."ParentID") as "Sum_1"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
		HAVING
			(Sum(t1."ParentID") <> 36 OR Sum(t1."ParentID") IS NULL)
	) t2

