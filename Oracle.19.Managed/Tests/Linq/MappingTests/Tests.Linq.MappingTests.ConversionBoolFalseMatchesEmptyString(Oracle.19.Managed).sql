-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	r."Value"
FROM
	"BoolStringConversionTable" r
WHERE
	r."Value" IS NULL
ORDER BY
	r."Id"

