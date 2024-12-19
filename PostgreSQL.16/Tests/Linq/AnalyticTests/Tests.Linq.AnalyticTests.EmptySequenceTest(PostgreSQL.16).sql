BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
DisposeTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	c_1."ParentID"
FROM
	"Parent" c_1

