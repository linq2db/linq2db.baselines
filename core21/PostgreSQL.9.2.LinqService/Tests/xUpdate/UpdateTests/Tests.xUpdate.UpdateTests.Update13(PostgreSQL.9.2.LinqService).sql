BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = "Parent"."ParentID"
FROM
	"Parent" p2
WHERE
	"Parent"."ParentID" < 3 AND "Parent"."ParentID" = "Parent"."ParentID"

