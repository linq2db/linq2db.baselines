BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."ParentID" = c_1."ParentID"
	))

