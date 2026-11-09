-- PostgreSQL.9.5 PostgreSQL
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."GroupId" = g_1."Id" AND i."Id" > 8
		LIMIT 1
	)
FROM
	"BatchGroup" g_1
ORDER BY
	g_1."Id"

-- PostgreSQL.9.5 PostgreSQL
-- Command 1
SELECT
	(
		SELECT
			i."Id"
		FROM
			"BatchItem" i
		WHERE
			i."GroupId" = g_1."Id" AND i."Id" > 8
		LIMIT 1
	)
FROM
	"BatchGroup" g_1
ORDER BY
	g_1."Id"

-- Command 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" t1
	)
