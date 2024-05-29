BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ParentID" = 2 AND ch."ChildID" = 21

