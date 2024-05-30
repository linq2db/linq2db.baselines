BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Value1",
	t1."ParentID"
FROM
	(
		SELECT
			c_1."ParentID" as "Value1",
			c_1."ParentID"
		FROM
			"Child" c_1
		UNION
		SELECT
			NULL::Int as "Value1",
			c_2."ParentID"
		FROM
			"Parent" c_2
	) t1
UNION ALL
SELECT
	c_3."ParentID",
	c_3."ParentID"
FROM
	"Child" c_3

