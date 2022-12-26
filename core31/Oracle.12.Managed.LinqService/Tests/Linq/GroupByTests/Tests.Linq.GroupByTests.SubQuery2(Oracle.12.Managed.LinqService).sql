BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 0

SELECT
	ch."ParentID" + 1
FROM
	"Child" ch
WHERE
	ch."ParentID" > :n
GROUP BY
	ch."ParentID" + 1

