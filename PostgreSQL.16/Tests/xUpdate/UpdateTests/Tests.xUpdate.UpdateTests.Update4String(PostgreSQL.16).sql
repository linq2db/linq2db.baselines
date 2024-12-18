BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = "Child"."ChildID" + 1
FROM
	"Parent" "a_Parent"
WHERE
	"Child"."ChildID" = :id AND
	"a_Parent"."Value1" = 1 AND
	"a_Parent"."Value1" IS NOT NULL AND
	"Child"."ParentID" = "a_Parent"."ParentID"

