BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = p1."ParentID"
FROM
	"Parent" p1
WHERE
	p1."ParentID" < 3 AND p1."ParentID" = "Parent"."ParentID"

