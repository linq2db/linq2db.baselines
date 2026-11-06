-- PostgreSQL.19 PostgreSQL12
SELECT
	(
		SELECT
			t1."ChildID"
		FROM
			(
				SELECT DISTINCT ON (c_1."ParentID")
					c_1."ChildID"
				FROM
					"Child" c_1
				WHERE
					c_1."ParentID" = p."ParentID"
				ORDER BY
					c_1."ParentID",
					c_1."ChildID" DESC
			) t1
		ORDER BY
			t1."ChildID" DESC
		LIMIT 1
	)
FROM
	"Parent" p

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

