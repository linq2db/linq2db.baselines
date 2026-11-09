-- Firebird.2.5 Firebird
SELECT
	(
		SELECT FIRST 1
			"i"."Id"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."GroupId" = "g_1"."Id" AND "i"."Id" > 8
	)
FROM
	"BatchGroup" "g_1"
ORDER BY
	"g_1"."Id"

-- Firebird.2.5 Firebird
SELECT
	(
		SELECT FIRST 1
			"i"."Id"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."GroupId" = "g_1"."Id" AND "i"."Id" > 8
	)
FROM
	"BatchGroup" "g_1"
ORDER BY
	"g_1"."Id"

