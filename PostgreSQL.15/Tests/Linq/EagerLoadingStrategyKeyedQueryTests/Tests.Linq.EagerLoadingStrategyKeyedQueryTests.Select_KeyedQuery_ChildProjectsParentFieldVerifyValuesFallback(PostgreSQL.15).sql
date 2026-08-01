-- PostgreSQL.15
-- Batch 1
SELECT
	m_1."Id",
	m_1."Name",
	d."Id",
	d."Name"
FROM
	"Company" m_1
		INNER JOIN "Department" d ON d."CompanyId" = m_1."Id"
ORDER BY
	m_1."Id"

-- Batch 2
SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"
