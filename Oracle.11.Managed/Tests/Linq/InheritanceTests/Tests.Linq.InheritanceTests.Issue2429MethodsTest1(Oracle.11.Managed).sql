-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100 AND ROWNUM <= 1

