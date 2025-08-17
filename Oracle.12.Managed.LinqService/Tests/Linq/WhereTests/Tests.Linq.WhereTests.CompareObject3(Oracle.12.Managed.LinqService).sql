BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 2
DECLARE @ChildID Int32
SET     @ChildID = 21

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	NOT (ch."ParentID" = :ParentID AND ch."ChildID" = :ChildID)

