BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
		CROSS JOIN (
			SELECT
				p."ParentID"
			FROM
				"GrandChild" p
			LIMIT 3
		) p_1
WHERE
	c_1."ParentID" = p_1."ParentID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
		CROSS JOIN (
			SELECT
				p."ParentID"
			FROM
				"GrandChild" p
			LIMIT 3 OFFSET 12 
		) p_1
WHERE
	c_1."ParentID" = p_1."ParentID"

