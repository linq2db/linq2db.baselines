-- PostgreSQL.9.2 PostgreSQL
SELECT
	m_1."Id",
	d_1."Id",
	d_1."CompanyId",
	d_1."Name",
	d_1."IsActive"
FROM
	"Company" m_1
		INNER JOIN (
			SELECT
				d."Id",
				d."CompanyId",
				d."Name",
				d."IsActive",
				ROW_NUMBER() OVER (PARTITION BY d."CompanyId" ORDER BY d."Id") as rn
			FROM
				"Department" d
		) d_1 ON d_1."CompanyId" = m_1."Id" AND d_1.rn <= 2
ORDER BY
	m_1."Id",
	d_1."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	c_1."Id"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

