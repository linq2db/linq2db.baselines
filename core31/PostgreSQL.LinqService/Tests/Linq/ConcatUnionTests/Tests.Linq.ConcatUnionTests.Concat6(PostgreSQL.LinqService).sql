BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" t1
		WHERE
			c_1."ParentID" = t1."ParentID" AND c_1."ChildID" = t1."ChildID"
	) = 2
UNION ALL
SELECT
	c_2."ParentID",
	c_2."ChildID"
FROM
	"Child" c_2
WHERE
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" t2
		WHERE
			c_2."ParentID" = t2."ParentID" AND c_2."ChildID" = t2."ChildID"
	) = 3

