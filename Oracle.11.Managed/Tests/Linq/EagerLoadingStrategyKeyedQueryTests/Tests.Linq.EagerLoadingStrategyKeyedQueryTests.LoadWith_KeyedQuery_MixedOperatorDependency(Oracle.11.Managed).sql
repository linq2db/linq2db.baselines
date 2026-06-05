-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Name"
FROM
	"Company" t1
ORDER BY
	t1."Id"

-- Oracle.11.Managed Oracle11

SELECT
	k_1."item",
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(
		SELECT 1 AS "item" FROM sys.dual
		UNION ALL
		SELECT 2 FROM sys.dual
		UNION ALL
		SELECT 3 FROM sys.dual) k_1
		INNER JOIN "Department" d ON k_1."item" = d."CompanyId" AND d."Id" > k_1."item"

