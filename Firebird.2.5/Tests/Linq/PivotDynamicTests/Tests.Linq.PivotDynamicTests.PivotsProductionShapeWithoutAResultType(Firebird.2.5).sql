-- Firebird.2.5 Firebird
SELECT
	"a"."Id"
FROM
	"Activity" "a"
ORDER BY
	"a"."Id"

-- Firebird.2.5 Firebird
SELECT
	"g_1"."Id",
	MAX(CASE
		WHEN "g_1"."TheKey" = 10 THEN "rub"."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN "g_1"."TheKey" = 20 THEN "rub"."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN "g_1"."TheKey" = 30 THEN "rub"."IdeRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN "g_1"."TheKey" = 10 THEN "rub"."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN "g_1"."TheKey" = 20 THEN "rub"."LibRub"
		ELSE NULL
	END),
	MAX(CASE
		WHEN "g_1"."TheKey" = 30 THEN "rub"."LibRub"
		ELSE NULL
	END)
FROM
	"ModTemplate" "g_1"
		INNER JOIN "Activity" "act" ON "g_1"."TheKey" = "act"."Id"
		INNER JOIN "CoaMask" "cm" ON "g_1"."Id" = "cm"."Id"
		LEFT JOIN "AtiRub" "pos" ON "pos"."Id" = "g_1"."PosRubId"
		LEFT JOIN "IasRub" "rub" ON "rub"."Id" = "g_1"."RubId"
GROUP BY
	"g_1"."Id"

