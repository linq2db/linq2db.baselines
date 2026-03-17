-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."TestId",
	t1."NTestId"
FROM
	"TestTable" t1
ORDER BY
	t1."Id"
FETCH NEXT 1 ROWS ONLY

