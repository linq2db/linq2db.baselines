-- PostgreSQL.13 PostgreSQL

SELECT
	m_1."Item1",
	d_1."Key_1"
FROM
	(
		SELECT DISTINCT
			p."ParentID" as "Item1"
		FROM
			"Parent" p
	) m_1
		INNER JOIN LATERAL (
			SELECT DISTINCT
				d."ParentID" as "Key_1"
			FROM
				"Child" d
			WHERE
				m_1."Item1" = d."ParentID"
		) d_1 ON 1=1

-- PostgreSQL.13 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

