-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	a."Id"
FROM
	"Activity" a
ORDER BY
	a."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	e."Id",
	MAX(rub."IdeRub") FILTER (WHERE e."TheKey" = 10),
	MAX(rub."IdeRub") FILTER (WHERE e."TheKey" = 20),
	MAX(rub."IdeRub") FILTER (WHERE e."TheKey" = 30),
	MAX(rub."LibRub") FILTER (WHERE e."TheKey" = 10),
	MAX(rub."LibRub") FILTER (WHERE e."TheKey" = 20),
	MAX(rub."LibRub") FILTER (WHERE e."TheKey" = 30)
FROM
	"ModTemplate" e
		INNER JOIN "Activity" act ON e."TheKey" = act."Id"
		INNER JOIN "CoaMask" cm ON e."Id" = cm."Id"
		LEFT JOIN "AtiRub" pos ON pos."Id" = e."PosRubId"
		LEFT JOIN "IasRub" rub ON rub."Id" = e."RubId"
GROUP BY
	e."Id"

