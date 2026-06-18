-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Company" t1
ORDER BY
	t1."Id"

-- PostgreSQL.13 PostgreSQL

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

