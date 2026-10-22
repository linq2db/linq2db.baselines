-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	m_1."ParentID",
	d_1."21",
	d_1."22",
	d_1."31",
	d_1."32",
	d_1."33"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 2 OR p."ParentID" = 3
	) m_1
		INNER JOIN LATERAL (
			SELECT
				SUM(d."ChildID") FILTER (WHERE d."ChildID" = 21) as "21",
				SUM(d."ChildID") FILTER (WHERE d."ChildID" = 22) as "22",
				SUM(d."ChildID") FILTER (WHERE d."ChildID" = 31) as "31",
				SUM(d."ChildID") FILTER (WHERE d."ChildID" = 32) as "32",
				SUM(d."ChildID") FILTER (WHERE d."ChildID" = 33) as "33"
			FROM
				"Child" d
			WHERE
				d."ParentID" = m_1."ParentID"
			GROUP BY
				d."ParentID"
		) d_1 ON 1=1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID" = 2 OR p."ParentID" = 3

