-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	(i."Value" IN (1) OR i."Value" IS NULL)
ORDER BY
	i."Id"

