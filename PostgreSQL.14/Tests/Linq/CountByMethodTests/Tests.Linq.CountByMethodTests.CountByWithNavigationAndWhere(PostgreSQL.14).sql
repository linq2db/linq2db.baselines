-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	c_2."Value_1"
FROM
	"Parent" t1
		INNER JOIN LATERAL (
			SELECT
				COUNT(*) as "Value_1"
			FROM
				"Child" c_1
			WHERE
				t1."ParentID" = c_1."ParentID"
			GROUP BY
				c_1."ParentID"
		) c_2 ON 1=1
WHERE
	c_2."Value_1" > 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

