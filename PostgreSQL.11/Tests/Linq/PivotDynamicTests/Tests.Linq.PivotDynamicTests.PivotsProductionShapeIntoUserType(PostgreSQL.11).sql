-- PostgreSQL.11 PostgreSQL
SELECT
	a."Id"
FROM
	"Activity" a
ORDER BY
	a."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	e."Id",
	MAX(cm."Name"),
	MAX(pos."LibRub"),
	MAX(e."ModifiedAt"),
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

-- PostgreSQL.11 PostgreSQL
SELECT
	r_1."Key_1",
	r_1."CoaName",
	r_1."PosLibRub",
	r_1."ModifiedAt",
	r_1."IDE_10",
	r_1."IDE_20",
	r_1."IDE_30",
	r_1."LIB_10",
	r_1."LIB_20",
	r_1."LIB_30"
FROM
	(
		SELECT
			r."Id" as "Key_1",
			MAX(rub."IdeRub") FILTER (WHERE r."TheKey" = 20) as "IDE_20",
			MAX(cm."Name") as "CoaName",
			MAX(pos."LibRub") as "PosLibRub",
			MAX(r."ModifiedAt") as "ModifiedAt",
			MAX(rub."IdeRub") FILTER (WHERE r."TheKey" = 10) as "IDE_10",
			MAX(rub."IdeRub") FILTER (WHERE r."TheKey" = 30) as "IDE_30",
			MAX(rub."LibRub") FILTER (WHERE r."TheKey" = 10) as "LIB_10",
			MAX(rub."LibRub") FILTER (WHERE r."TheKey" = 20) as "LIB_20",
			MAX(rub."LibRub") FILTER (WHERE r."TheKey" = 30) as "LIB_30"
		FROM
			"ModTemplate" r
				INNER JOIN "Activity" act ON r."TheKey" = act."Id"
				INNER JOIN "CoaMask" cm ON r."Id" = cm."Id"
				LEFT JOIN "AtiRub" pos ON pos."Id" = r."PosRubId"
				LEFT JOIN "IasRub" rub ON rub."Id" = r."RubId"
		GROUP BY
			r."Id"
	) r_1
WHERE
	r_1."Key_1" = 1 AND r_1."IDE_20" = 'IDE-B'

-- PostgreSQL.11 PostgreSQL
SELECT
	e."Id",
	MAX(cm."Name"),
	MAX(pos."LibRub"),
	MAX(e."ModifiedAt"),
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

-- PostgreSQL.11 PostgreSQL
SELECT
	e."Id",
	MAX(cm."Name"),
	MAX(pos."LibRub"),
	MAX(e."ModifiedAt"),
	MAX(rub."IdeRub") FILTER (WHERE e."TheKey" = 10),
	MAX(rub."IdeRub") FILTER (WHERE e."TheKey" = 20),
	MAX(rub."IdeRub") FILTER (WHERE e."TheKey" = 30),
	MAX(rub."IdeRub") FILTER (WHERE e."TheKey" = 40),
	MAX(rub."LibRub") FILTER (WHERE e."TheKey" = 10),
	MAX(rub."LibRub") FILTER (WHERE e."TheKey" = 20),
	MAX(rub."LibRub") FILTER (WHERE e."TheKey" = 30),
	MAX(rub."LibRub") FILTER (WHERE e."TheKey" = 40)
FROM
	"ModTemplate" e
		INNER JOIN "Activity" act ON e."TheKey" = act."Id"
		INNER JOIN "CoaMask" cm ON e."Id" = cm."Id"
		LEFT JOIN "AtiRub" pos ON pos."Id" = e."PosRubId"
		LEFT JOIN "IasRub" rub ON rub."Id" = e."RubId"
GROUP BY
	e."Id"

