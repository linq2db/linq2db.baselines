BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
FROM
	"Parent" x
		INNER JOIN "Child" c_1 ON x."ParentID" = c_1."ParentID"
		INNER JOIN "Child" c_2 ON c_1."ParentID" = c_2."ChildID"
WHERE
	1 = 0 AND "Child"."ParentID" = c_2."ParentID"

