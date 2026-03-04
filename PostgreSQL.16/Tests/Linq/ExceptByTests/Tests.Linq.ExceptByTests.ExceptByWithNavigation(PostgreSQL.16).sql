-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
						ROW_NUMBER() OVER (PARTITION BY x."ChildID" ORDER BY x."ChildID") as "RowNumber",
						x."ChildID"
					FROM
						"Child" x
					WHERE
						p."ParentID" = x."ParentID" AND x."ChildID" NOT IN (2)
				) c_1
			WHERE
				c_1."RowNumber" = 1
		) c_2 ON 1=1
ORDER BY
	c_2."ChildID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Item1",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID" as "Item1"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."Item1" = d."ParentID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

