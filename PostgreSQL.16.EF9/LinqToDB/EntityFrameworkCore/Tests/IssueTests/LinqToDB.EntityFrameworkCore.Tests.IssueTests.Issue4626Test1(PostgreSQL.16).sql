BeginTransaction(RepeatableRead)


-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d_1."Key_1",
	d_1."Sum_1",
	d_1."Issue4626AnyValue"
FROM
	"Parents" m_1
		INNER JOIN LATERAL (
			SELECT
				d."ParentId" as "Key_1",
				SUM(d."Id") as "Sum_1",
				ANY_VALUE(d."Name") as "Issue4626AnyValue"
			FROM
				"Children" d
			WHERE
				m_1."Id" = d."ParentId"
			GROUP BY
				d."ParentId"
		) d_1 ON 1=1



DisposeTransaction


-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Parents" c_1



