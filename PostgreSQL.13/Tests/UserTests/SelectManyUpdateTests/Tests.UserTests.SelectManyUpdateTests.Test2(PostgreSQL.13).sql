BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Child"
SET
	"ChildID" = 10
FROM
	"Parent" x
		INNER JOIN "Child" "a_Children" ON x."ParentID" = "a_Children"."ParentID"
WHERE
	1 = 0 AND "a_Children"."ParentID" = "Child"."ChildID"

