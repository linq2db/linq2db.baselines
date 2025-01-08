BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d_1."Key_1",
	d_1."ToValue"
FROM
	(
		SELECT DISTINCT
			c_1."ParentID"
		FROM
			"Parent" c_1
	) m_1
		INNER JOIN (
			SELECT
				d."ParentID" as "Key_1",
				STRING_AGG(d."ChildID"::text, ', ') as "ToValue"
			FROM
				"Child" d
			GROUP BY
				d."ParentID"
		) d_1 ON m_1."ParentID" = d_1."Key_1"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."ParentID"
FROM
	"Parent" c_1

