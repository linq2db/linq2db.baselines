-- PostgreSQL.15 PostgreSQL12
SELECT
	m_1."Id",
	d_1."Id",
	d_1."CompanyId",
	d_1."Name",
	d_1."IsActive"
FROM
	"Company" m_1
		INNER JOIN LATERAL (
			SELECT
				d."Id",
				d."CompanyId",
				d."Name",
				d."IsActive"
			FROM
				"Department" d
			WHERE
				d."CompanyId" = m_1."Id"
			ORDER BY
				d."Id"
			LIMIT 2
		) d_1 ON 1=1
ORDER BY
	m_1."Id"

-- PostgreSQL.15 PostgreSQL12
SELECT
	c_1."Id"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

