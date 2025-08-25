BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" >= 0 AND ch."ChildID" <= 100 AND ROWNUM <= 3

