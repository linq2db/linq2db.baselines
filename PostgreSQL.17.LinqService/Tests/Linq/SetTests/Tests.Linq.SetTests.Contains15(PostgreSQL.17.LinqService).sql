BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."ChildID"
FROM
	"Child" p
		INNER JOIN "Parent" "a_Parent1" ON p."ParentID" = "a_Parent1"."ParentID"
WHERE
	"a_Parent1"."ParentID" IN (1, 2)

