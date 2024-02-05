BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"
HAVING
	Count(*) > 1

