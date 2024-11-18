BeginTransaction(RepeatableRead)


--  PostgreSQL.9.3 PostgreSQL

SELECT
	m_1."Id",
	d_1."Tag",
	d_1."Sum_1",
	d_1."Des"
FROM
	"Parents" m_1
		INNER JOIN LATERAL (
			SELECT
				d."ParentId" as "Tag",
				SUM(d."Id") as "Sum_1",
				ANY_VALUE(d."Name") as "Des"
			FROM
				"Children" d
			WHERE
				m_1."Id" = d."ParentId"
			GROUP BY
				d."ParentId"
		) d_1 ON 1=1



DisposeTransaction


--  PostgreSQL.9.3 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Parents" c_1



