

-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d_1."Key_1",
	d_1."SUM_1",
	d_1."ToValue"
FROM
	"Parents" m_1
		INNER JOIN LATERAL (
			SELECT
				d."ParentId" as "Key_1",
				SUM(d."Id") as "SUM_1",
				STRING_AGG(d."Name", ', ') as "ToValue"
			FROM
				"Children" d
			WHERE
				m_1."Id" = d."ParentId"
			GROUP BY
				d."ParentId"
		) d_1 ON 1=1





-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Parents" c_1



