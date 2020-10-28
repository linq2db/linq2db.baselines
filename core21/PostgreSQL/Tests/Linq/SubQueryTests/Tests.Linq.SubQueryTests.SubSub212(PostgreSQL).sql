BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" c_1
		WHERE
			c_1."ParentID" + 1 < p2."ParentID" + 2 AND c_1."ParentID" + 1 < p2."ParentID" + 2 AND
			"a_Parent"."ParentID" = c_1."ParentID"
	)
FROM
	"Child" p2
		INNER JOIN "Parent" "a_Parent" ON p2."ParentID" = "a_Parent"."ParentID"
WHERE
	p2."ParentID" + 2 > 0 AND p2."ParentID" + 1 > 0

