-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

-- PostgreSQL.15 PostgreSQL

SELECT
	d."CompanyId",
	d."Id",
	d."Name"
FROM
	"Department" d
WHERE
	d."CompanyId" IN (1, 2, 3)
ORDER BY
	d."Id"

-- PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."DepartmentId",
	d."Name",
	d."Salary"
FROM
	(VALUES
		(101), (102), (103), (201), (202), (203), (204), (301), (302), (303),
		(304), (305)
	) k_1(item)
		INNER JOIN "Employee" d ON d."DepartmentId" = k_1.item
ORDER BY
	d."Id"

