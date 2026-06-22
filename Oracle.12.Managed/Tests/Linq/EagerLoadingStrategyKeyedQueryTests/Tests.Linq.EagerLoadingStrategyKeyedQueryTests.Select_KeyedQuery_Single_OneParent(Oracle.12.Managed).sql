-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id",
	c_1."Name"
FROM
	"Company" c_1
WHERE
	c_1."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	k_1."item",
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(
		SELECT 1 AS "item" FROM sys.dual) k_1
		INNER JOIN "Department" d ON d."CompanyId" = k_1."item"
ORDER BY
	d."Id"

