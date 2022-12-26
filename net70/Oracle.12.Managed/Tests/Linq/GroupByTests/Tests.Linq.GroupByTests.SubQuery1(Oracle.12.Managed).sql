BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	ch."ParentID" + 1
FROM
	"Child" ch
WHERE
	ch."ParentID" + 1 > :n
GROUP BY
	ch."ParentID" + 1

