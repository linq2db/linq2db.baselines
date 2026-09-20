-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	a."Id"
FROM
	"Activity" a
ORDER BY
	a."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	MAX(cm."Name"),
	MAX(pos."LibRub"),
	MAX(e."ModifiedAt"),
	MAX(CASE
		WHEN e."TheKey" = 10 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 20 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 30 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 10 THEN rub."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 20 THEN rub."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 30 THEN rub."LibRub"
		ELSE NULL
	END)
FROM
	"ModTemplate" e
		INNER JOIN "Activity" act ON e."TheKey" = act."Id"
		INNER JOIN "CoaMask" cm ON e."Id" = cm."Id"
		LEFT JOIN "AtiRub" pos ON pos."Id" = e."PosRubId"
		LEFT JOIN "IasRub" rub ON rub."Id" = e."RubId"
GROUP BY
	e."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r_1."Key_1",
	r_1."CoaName",
	r_1."PosLibRub",
	r_1."ModifiedAt",
	r_1.IDE_10,
	r_1.IDE_20,
	r_1.IDE_30,
	r_1.LIB_10,
	r_1.LIB_20,
	r_1.LIB_30
FROM
	(
		SELECT
			r."Id" as "Key_1",
			MAX(CASE
				WHEN r."TheKey" = 20 THEN rub."IdeRub"
				ELSE NULL
			END) as IDE_20,
			MAX(cm."Name") as "CoaName",
			MAX(pos."LibRub") as "PosLibRub",
			MAX(r."ModifiedAt") as "ModifiedAt",
			MAX(CASE
				WHEN r."TheKey" = 10 THEN rub."IdeRub"
				ELSE NULL
			END) as IDE_10,
			MAX(CASE
				WHEN r."TheKey" = 30 THEN rub."IdeRub"
				ELSE NULL
			END) as IDE_30,
			MAX(CASE
				WHEN r."TheKey" = 10 THEN rub."LibRub"
				ELSE NULL
			END) as LIB_10,
			MAX(CASE
				WHEN r."TheKey" = 20 THEN rub."LibRub"
				ELSE NULL
			END) as LIB_20,
			MAX(CASE
				WHEN r."TheKey" = 30 THEN rub."LibRub"
				ELSE NULL
			END) as LIB_30
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
	r_1."Key_1" = 1 AND r_1.IDE_20 = 'IDE-B'

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	MAX(cm."Name"),
	MAX(pos."LibRub"),
	MAX(e."ModifiedAt"),
	MAX(CASE
		WHEN e."TheKey" = 10 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 20 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 30 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 10 THEN rub."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 20 THEN rub."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 30 THEN rub."LibRub"
		ELSE NULL
	END)
FROM
	"ModTemplate" e
		INNER JOIN "Activity" act ON e."TheKey" = act."Id"
		INNER JOIN "CoaMask" cm ON e."Id" = cm."Id"
		LEFT JOIN "AtiRub" pos ON pos."Id" = e."PosRubId"
		LEFT JOIN "IasRub" rub ON rub."Id" = e."RubId"
GROUP BY
	e."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	MAX(cm."Name"),
	MAX(pos."LibRub"),
	MAX(e."ModifiedAt"),
	MAX(CASE
		WHEN e."TheKey" = 10 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 20 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 30 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 40 THEN rub."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 10 THEN rub."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 20 THEN rub."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 30 THEN rub."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN e."TheKey" = 40 THEN rub."LibRub"
		ELSE NULL
	END)
FROM
	"ModTemplate" e
		INNER JOIN "Activity" act ON e."TheKey" = act."Id"
		INNER JOIN "CoaMask" cm ON e."Id" = cm."Id"
		LEFT JOIN "AtiRub" pos ON pos."Id" = e."PosRubId"
		LEFT JOIN "IasRub" rub ON rub."Id" = e."RubId"
GROUP BY
	e."Id"

