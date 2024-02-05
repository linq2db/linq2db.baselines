BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID"
FROM
	(
		SELECT DISTINCT
			ch."ParentID"
		FROM
			"Child" ch
	) t1
ORDER BY
	t1."ParentID"

