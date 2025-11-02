-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Parent"
SET
	"ParentID" = p2."ParentID"
FROM
	"Parent" p2
WHERE
	"Parent"."ParentID" < 3 AND "Parent"."ParentID" = p2."ParentID"

