BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" p
		LEFT JOIN "Parent" "a_Parent" ON (p."ParentID" = "a_Parent"."ParentID" OR p."ParentID" IS NULL AND "a_Parent"."ParentID" IS NULL)
WHERE
	"a_Parent"."ParentID" = 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON (ch."ParentID" = "a_Parent"."ParentID" OR ch."ParentID" IS NULL AND "a_Parent"."ParentID" IS NULL)

