BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	(ch."ChildID" > 3 OR ch."ChildID" < 4) AND ROWNUM <= 3

