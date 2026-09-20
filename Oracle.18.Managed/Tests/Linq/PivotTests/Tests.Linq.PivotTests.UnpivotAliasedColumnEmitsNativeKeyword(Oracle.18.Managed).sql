-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Name",
	t1."Value"
FROM
	"AliasedSales" UNPIVOT ("Value" FOR "Name" IN (Q_ONE, Q_TWO)) t1
ORDER BY
	t1."Name"

