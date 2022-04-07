BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p1
		FULL JOIN "Parent" p ON p1."ParentID" = p."ParentID" AND (p1."Value1" = p."Value1" OR p1."Value1" IS NULL AND p."Value1" IS NULL)

