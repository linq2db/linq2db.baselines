BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."ParentID",
	d_1."ParentID",
	d_1."Children"
FROM
	(
		SELECT DISTINCT
			c_1."ParentID"
		FROM
			"Parent" c_1
	) m_1
		INNER JOIN LATERAL (
			SELECT
				d."ParentID",
				STRING_AGG(d."ChildID"::text, ', ') as "Children"
			FROM
				"Child" d
			WHERE
				m_1."ParentID" = d."ParentID"
			GROUP BY
				d."ParentID"
		) d_1 ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ParentID"
FROM
	"Parent" c_1

