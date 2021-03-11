BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
FROM
	"Parent" x
		INNER JOIN "Child" c_1 ON x."ParentID" = c_1."ParentID"
WHERE
	1 = 0 AND c_1."ParentID" = "Child"."ChildID"

