-- PostgreSQL.9.3 PostgreSQL
-- Command 1
SELECT
	g_1."Id",
	(
		SELECT
			i."Value"
		FROM
			"BatchItem" i
		WHERE
			i."GroupId" = g_1."Id"
		ORDER BY
			i."Id"
		LIMIT 1
	)
FROM
	"BatchGroup" g_1
WHERE
	g_1."Id" = 1
UNION ALL
SELECT
	g_2."Id",
	(
		SELECT
			i_1."Value"
		FROM
			"BatchItem" i_1
		WHERE
			i_1."GroupId" = g_2."Id"
		ORDER BY
			i_1."Id"
		LIMIT 1
	)
FROM
	"BatchGroup" g_2
WHERE
	g_2."Id" = 2

-- Command 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" t1
	)
