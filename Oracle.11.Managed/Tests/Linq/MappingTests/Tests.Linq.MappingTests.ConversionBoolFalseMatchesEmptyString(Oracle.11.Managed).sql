-- Oracle.11.Managed Oracle11
SELECT
	r."Id",
	r."Value"
FROM
	"BoolStringConversionTable" r
WHERE
	r."Value" IS NULL
ORDER BY
	r."Id"

