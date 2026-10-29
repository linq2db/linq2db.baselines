-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT ON (p_1."Value1")
	p_1."ParentID",
	p_1."Value1",
	c_1."ChildID"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
	) p_1
		INNER JOIN "Child" c_1 ON p_1."ParentID" = c_1."ParentID"
ORDER BY
	p_1."Value1",
	p_1."ParentID" DESC,
	c_1."ChildID"

