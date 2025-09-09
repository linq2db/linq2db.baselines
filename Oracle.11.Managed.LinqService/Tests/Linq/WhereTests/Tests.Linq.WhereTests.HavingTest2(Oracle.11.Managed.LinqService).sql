BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Child" c_1
GROUP BY
	c_1."ParentID"
HAVING
	COUNT(*) > 1

