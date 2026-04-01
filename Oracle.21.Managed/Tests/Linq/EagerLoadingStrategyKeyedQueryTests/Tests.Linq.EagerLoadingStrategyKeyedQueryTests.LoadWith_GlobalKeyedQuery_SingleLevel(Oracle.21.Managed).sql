-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Company" t1
ORDER BY
	t1."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	d_sel."CompanyId",
	d_sel."Id",
	d_sel."Name",
	d_sel."IsActive"
FROM
	"Department" d_sel
WHERE
	d_sel."CompanyId" IN (1, 2, 3)

