BeforeExecute
-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = c_2."ParentID" + 1000
FROM
	"Child" c_1,
	"Child" c_2
WHERE
	"Parent"."ParentID" = 1 AND "Parent"."ParentID" = c_1."ParentID" AND
	c_2."ChildID" = 11

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

UPDATE
	"Parent"
SET
	"ParentID" = :ParentID
WHERE
	"Parent"."ParentID" = 1001

