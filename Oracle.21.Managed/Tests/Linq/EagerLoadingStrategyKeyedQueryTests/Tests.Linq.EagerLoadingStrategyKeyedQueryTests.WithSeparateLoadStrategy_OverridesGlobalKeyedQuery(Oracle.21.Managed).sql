-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1."DepartmentId",
	d_1."Name",
	d_1."Salary"
FROM
	(
		SELECT DISTINCT
			d."Id",
			c_1."Id" as "Id_1"
		FROM
			"Company" c_1
				INNER JOIN "Department" d ON d."CompanyId" = c_1."Id"
	) m_1
		INNER JOIN "Employee" d_1 ON d_1."DepartmentId" = m_1."Id"
ORDER BY
	d_1."Id",
	m_1."Id",
	m_1."Id_1"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d."Name"
FROM
	"Company" m_1
		INNER JOIN "Department" d ON d."CompanyId" = m_1."Id"
ORDER BY
	d."Id",
	m_1."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

