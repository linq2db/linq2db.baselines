-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Child" c_1
GROUP BY
	c_1."ParentID"
HAVING
	COUNT(*) > 1

