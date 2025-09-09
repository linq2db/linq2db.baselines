BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 21

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	NOT (ch."ParentID" = :ParentID AND ch."ChildID" = :ChildID)

