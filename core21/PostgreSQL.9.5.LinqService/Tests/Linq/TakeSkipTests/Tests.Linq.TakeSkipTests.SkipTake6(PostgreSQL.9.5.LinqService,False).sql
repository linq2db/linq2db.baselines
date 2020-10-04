BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1,
	(
		SELECT
			p."ParentID"
		FROM
			"GrandChild" p
		LIMIT 3
	) t1
WHERE
	c_1."ParentID" = t1."ParentID"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1,
	(
		SELECT
			p."ParentID"
		FROM
			"GrandChild" p
		LIMIT 3 OFFSET 12 
	) t1
WHERE
	c_1."ParentID" = t1."ParentID"

