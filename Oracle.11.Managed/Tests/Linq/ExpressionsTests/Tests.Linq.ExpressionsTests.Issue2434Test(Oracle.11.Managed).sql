-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName",
	Nvl(t1."FirstName", '') || ' ' || Nvl(t1."LastName", '')
FROM
	"Issue2434Table" t1
ORDER BY
	Nvl(t1."FirstName", '') || ' ' || Nvl(t1."LastName", '')

