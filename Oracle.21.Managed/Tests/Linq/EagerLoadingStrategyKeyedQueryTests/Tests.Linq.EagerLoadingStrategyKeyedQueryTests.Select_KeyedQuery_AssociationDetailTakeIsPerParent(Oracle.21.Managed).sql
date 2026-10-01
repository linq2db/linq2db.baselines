-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	c_1."Id"
FROM
	"Company" c_1
ORDER BY
	c_1."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	k_1."item",
	d_1."Id",
	d_1."Name"
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
				d."Name"
			FROM
				"Department" d
			WHERE
				k_1."item" = d."CompanyId"
			ORDER BY
				d."Id"
			FETCH NEXT 2 ROWS ONLY
		) d_1

