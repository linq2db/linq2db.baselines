-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	c_1."Id"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	k_1."item",
	d_1."Id",
	d_1."CompanyId",
	d_1."Name",
	d_1."IsActive"
FROM
	(
		SELECT 1 AS "item" FROM sys.dual
		UNION ALL
		SELECT 2 FROM sys.dual
		UNION ALL
		SELECT 3 FROM sys.dual) k_1
		CROSS APPLY (
			SELECT
				d."Id",
				d."CompanyId",
				d."Name",
				d."IsActive"
			FROM
				"Department" d
			WHERE
				d."CompanyId" = k_1."item"
			ORDER BY
				d."Id"
			FETCH NEXT 2 ROWS ONLY
		) d_1

