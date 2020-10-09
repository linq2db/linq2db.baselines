BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 2
DECLARE @ChildID_1 Integer -- Int32
SET     @ChildID_1 = 21

SELECT 
	ch."ParentID", 
	ch."ChildID"
FROM
	"Child" ch
WHERE
	(ch."ParentID" <> :ParentID_1 OR ch."ChildID" <> :ChildID_1) AND
	ch."ParentID" > 0

