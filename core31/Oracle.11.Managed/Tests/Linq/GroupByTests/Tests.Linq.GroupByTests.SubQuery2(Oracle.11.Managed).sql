BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @n Int32
SET     @n = 1

SELECT
	t1."ParentID"
FROM
	(
		SELECT
			ch."ParentID" + 1 as "ParentID"
		FROM
			"Child" ch
		WHERE
			ch."ParentID" + 1 > :n
	) t1
GROUP BY
	t1."ParentID"

