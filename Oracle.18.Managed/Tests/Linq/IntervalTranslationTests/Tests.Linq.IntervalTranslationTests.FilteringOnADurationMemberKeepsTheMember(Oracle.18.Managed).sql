-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	r."Grace" > 1800
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	r."Required" > 1800
ORDER BY
	r."Id"

