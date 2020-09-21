BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
FROM
	"Parent" x,
	"Child" c_1,
	"Child" c_2
WHERE
	1 = 0 AND
	x."ParentID" = c_1."ParentID" AND
	c_1."ParentID" = c_2."ChildID" AND
	c_2."ParentID" = c_1."ParentID"

