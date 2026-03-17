-- Oracle.11.Managed Oracle11

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p,
	"Child" ch
WHERE
	p."ParentID" = ch."ParentID"

