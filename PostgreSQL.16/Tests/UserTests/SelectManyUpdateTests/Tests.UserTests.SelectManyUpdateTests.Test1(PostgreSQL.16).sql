BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"Parent"
SET
	"Value1" = NULL
FROM
	"Parent" x
WHERE
	x."ParentID" IN (0, 0) AND x."ParentID" = "Parent"."Value1"

