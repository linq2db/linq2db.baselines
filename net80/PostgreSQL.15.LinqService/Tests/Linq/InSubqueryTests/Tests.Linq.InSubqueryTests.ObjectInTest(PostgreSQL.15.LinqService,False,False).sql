BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."ParentID" = c_1."ParentID" AND Coalesce(p."Value1", -1) = c_1."ParentID"
	)

