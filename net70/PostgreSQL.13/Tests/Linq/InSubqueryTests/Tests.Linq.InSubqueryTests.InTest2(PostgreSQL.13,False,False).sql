BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."GrandChildID"
FROM
	"GrandChild" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			p."Value1"
		FROM
			"Parent" p
	)

