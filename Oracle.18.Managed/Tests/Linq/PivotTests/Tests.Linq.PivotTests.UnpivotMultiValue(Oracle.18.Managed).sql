-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Name",
	t1."Value1",
	t1."Value2",
	t1."Value3"
FROM
	"MonthlySales" UNPIVOT (("Value1", "Value2", "Value3") FOR "Name" IN (("Jan", "Feb", "Mar") AS 'Q1', ("Apr", "May", "Jun") AS 'Q2')) t1
ORDER BY
	t1."Name"

