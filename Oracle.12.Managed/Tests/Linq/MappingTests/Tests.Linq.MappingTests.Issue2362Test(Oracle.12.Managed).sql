-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r."Value"
FROM
	"Issue2362Table" r
WHERE
	r."Value" IS NULL
ORDER BY
	r."Id"

