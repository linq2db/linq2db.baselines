-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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
	NOT (ch."ParentID" = :ParentID AND ch."ChildID" = :ChildID) AND
	ch."ParentID" > 0

