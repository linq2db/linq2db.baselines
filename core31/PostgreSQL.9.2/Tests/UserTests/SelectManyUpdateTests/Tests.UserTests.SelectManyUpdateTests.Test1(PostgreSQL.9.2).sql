BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

UPDATE
	"Parent"
SET
	"Value1" = NULL
FROM
	"Parent" c_1
WHERE
	"Parent"."ParentID" IN (0, 0) AND "Parent"."ParentID" = "Parent"."Value1"

