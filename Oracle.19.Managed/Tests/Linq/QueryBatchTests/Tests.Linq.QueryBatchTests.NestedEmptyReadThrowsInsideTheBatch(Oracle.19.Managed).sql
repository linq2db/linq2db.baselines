-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."GroupId" = g_1."Id" AND i."Id" > 8
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"BatchGroup" g_1
ORDER BY
	g_1."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."GroupId" = g_1."Id" AND i."Id" > 8
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"BatchGroup" g_1
ORDER BY
	g_1."Id"

