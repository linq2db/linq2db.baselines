BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
FROM
	"Parent" x,
	"Child" c_1
WHERE
	1 = 0 AND x."ParentID" = c_1."ParentID" AND c_1."ParentID" = "Child"."ChildID"

