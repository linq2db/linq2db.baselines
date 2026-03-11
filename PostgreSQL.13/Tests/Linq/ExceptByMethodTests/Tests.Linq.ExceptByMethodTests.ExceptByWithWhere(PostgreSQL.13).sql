-- PostgreSQL.13 PostgreSQL

SELECT
	p."ParentID",
	c_2."ChildID"
FROM
	"Parent" p
		INNER JOIN LATERAL (
			SELECT
				c_1."ChildID"
			FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY e."ChildID" ORDER BY e."ChildID") as "RowNumber",
						e."ChildID"
					FROM
						"Child" e
					WHERE
						p."ParentID" = e."ParentID" AND e."ChildID" > 0 AND
						e."ChildID" NOT IN (2)
				) c_1
			WHERE
				c_1."RowNumber" = 1
		) c_2 ON 1=1

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

