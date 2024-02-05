BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."Value1",
	o."ChildID",
	p."ParentID"
FROM
	"Parent" p
		LEFT JOIN "Child" o ON p."ParentID" = o."ParentID"

