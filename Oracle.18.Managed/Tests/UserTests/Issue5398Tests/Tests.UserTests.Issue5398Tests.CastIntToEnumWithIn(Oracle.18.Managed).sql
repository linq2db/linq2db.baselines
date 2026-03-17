-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	i."Value" IN (1, 3)
ORDER BY
	i."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestEnumTable" t1

