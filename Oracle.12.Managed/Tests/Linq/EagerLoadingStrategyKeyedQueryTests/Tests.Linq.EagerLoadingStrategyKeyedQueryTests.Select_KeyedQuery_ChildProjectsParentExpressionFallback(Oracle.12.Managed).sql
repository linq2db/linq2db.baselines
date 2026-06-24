-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	m_1."Name",
	d."Id",
	m_1."Name" || ' / ' || d."Name"
FROM
	"Company" m_1
		INNER JOIN "Department" d ON d."CompanyId" = m_1."Id"
ORDER BY
	d."Id",
	m_1."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

