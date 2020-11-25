BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Parent"
SET
	"Value1" = NULL
FROM
	"Parent" c_1
WHERE
	"Parent"."ParentID" IN (0, 0) AND "Parent"."ParentID" = "Parent"."Value1"

