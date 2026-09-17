-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	m_1."Id",
	d_1."Id",
	d_1."CompanyId",
	d_1."Name",
	d_1."IsActive"
FROM
	"Company" m_1
		CROSS APPLY (
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
			FETCH NEXT 2 ROWS ONLY
		) d_1
ORDER BY
	m_1."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	c_1."Id"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

