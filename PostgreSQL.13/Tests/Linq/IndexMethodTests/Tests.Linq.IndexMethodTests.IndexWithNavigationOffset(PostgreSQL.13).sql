-- PostgreSQL.13 PostgreSQL

SELECT
	p."ParentID",
	c_2."Item1",
	c_2."ChildID"
FROM
	"Parent" p
		INNER JOIN LATERAL (
			SELECT
				ROW_NUMBER() OVER (ORDER BY c_1."ChildID") - 1 as "Item1",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				p."ParentID" = c_1."ParentID"
		) c_2 ON 1=1
WHERE
	c_2."Item1" < 15
ORDER BY
	c_2."ChildID"

-- PostgreSQL.13 PostgreSQL

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

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

