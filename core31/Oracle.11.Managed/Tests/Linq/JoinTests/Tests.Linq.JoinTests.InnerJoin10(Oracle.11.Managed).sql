BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	q."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" q ON p."ParentID" = q."ParentID"

