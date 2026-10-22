-- PostgreSQL.18 PostgreSQL12
SELECT
	a."Id"
FROM
	"Activity" a
ORDER BY
	a."Id"

-- PostgreSQL.18 PostgreSQL12
SELECT
	g_1."Id",
	MAX(rub."IdeRub") FILTER (WHERE g_1."TheKey" = 10),
	MAX(rub."IdeRub") FILTER (WHERE g_1."TheKey" = 20),
	MAX(rub."IdeRub") FILTER (WHERE g_1."TheKey" = 30),
	MAX(rub."LibRub") FILTER (WHERE g_1."TheKey" = 10),
	MAX(rub."LibRub") FILTER (WHERE g_1."TheKey" = 20),
	MAX(rub."LibRub") FILTER (WHERE g_1."TheKey" = 30)
FROM
	"ModTemplate" g_1
		INNER JOIN "Activity" act ON g_1."TheKey" = act."Id"
		INNER JOIN "CoaMask" cm ON g_1."Id" = cm."Id"
		LEFT JOIN "AtiRub" pos ON pos."Id" = g_1."PosRubId"
		LEFT JOIN "IasRub" rub ON rub."Id" = g_1."RubId"
GROUP BY
	g_1."Id"

