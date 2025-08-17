BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

