-- Firebird.2.5 Firebird
SELECT
	"g_1"."Id",
	(
		SELECT FIRST 1
			"i"."Value"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."GroupId" = "g_1"."Id"
		ORDER BY
			"i"."Id"
	)
FROM
	"BatchGroup" "g_1"
WHERE
	"g_1"."Id" = 1
UNION ALL
SELECT
	"g_2"."Id",
	(
		SELECT FIRST 1
			"i_1"."Value"
		FROM
			"BatchItem" "i_1"
		WHERE
			"i_1"."GroupId" = "g_2"."Id"
		ORDER BY
			"i_1"."Id"
	)
FROM
	"BatchGroup" "g_2"
WHERE
	"g_2"."Id" = 2

-- Firebird.2.5 Firebird
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t1"
	)
FROM rdb$database

