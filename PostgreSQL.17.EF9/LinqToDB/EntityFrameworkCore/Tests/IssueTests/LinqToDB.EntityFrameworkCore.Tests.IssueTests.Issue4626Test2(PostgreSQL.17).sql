

-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d_1."Key_1",
	d_1."Sum_1",
	d_1."Des"
FROM
	"Parents" m_1
		INNER JOIN (
			SELECT
				d."ParentId" as "Key_1",
				SUM(d."Id") as "Sum_1",
				STRING_AGG(d."Name", ', ') as "Des"
			FROM
				"Children" d
			GROUP BY
				d."ParentId"
		) d_1 ON m_1."Id" = d_1."Key_1"





-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Parents" c_1



