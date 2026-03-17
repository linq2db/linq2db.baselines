-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	i."Value" IN (1, 2)
ORDER BY
	i."Id"

