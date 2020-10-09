BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = (
		SELECT 
			c_1."ParentID"
		FROM
			"Child" c_1
		WHERE
			c_1."ChildID" = 11
	) + 1000
FROM
	"Child" c_2
WHERE
	"Parent"."ParentID" = 1 AND "Parent"."ParentID" = c_2."ParentID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

UPDATE
	"Parent"
SET
	"ParentID" = :ParentID
WHERE
	"Parent"."ParentID" = 1001

