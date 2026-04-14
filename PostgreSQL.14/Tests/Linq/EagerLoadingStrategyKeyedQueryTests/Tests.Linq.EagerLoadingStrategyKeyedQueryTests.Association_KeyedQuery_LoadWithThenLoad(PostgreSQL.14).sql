-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Company" t1
ORDER BY
	t1."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	m_1."Id",
	d_1."Id",
	d_1."DepartmentId",
	d_1."Name",
	d_1."Salary"
FROM
	(
		SELECT DISTINCT
			d."Id"
		FROM
			(VALUES
				(1), (2), (3)
			) t1(item)
				INNER JOIN "Department" d ON t1.item = d."CompanyId"
	) m_1
		INNER JOIN "Employee" d_1 ON m_1."Id" = d_1."DepartmentId"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON k_1.item = d."CompanyId"

