-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p2."ParentID",
	c_2."ChildIDCount"
FROM
	"Parent" p
		INNER JOIN LATERAL (
			SELECT
				COUNT(*) as "ChildIDCount"
			FROM
				"Child" c_1
			WHERE
				p."ParentID" = c_1."ParentID"
			GROUP BY
				c_1."ChildID"
		) c_2 ON 1=1
		INNER JOIN "Parent" p2 ON p."ParentID" = p2."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

