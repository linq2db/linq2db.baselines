BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" > 3 OR ch."ChildID" < 4
FETCH NEXT 3 ROWS ONLY

