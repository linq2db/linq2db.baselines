-- Firebird.2.5 Firebird
SELECT
	"g_1"."Id",
	(
		SELECT FIRST 1
			1
		FROM
			"BatchItem" "i"
		WHERE
			"i"."GroupId" = "g_1"."Id"
		ORDER BY
			"i"."Id"
	),
	(
		SELECT FIRST 1
			"i_1"."Value"
		FROM
			"BatchItem" "i_1"
		WHERE
			"i_1"."GroupId" = "g_1"."Id"
		ORDER BY
			"i_1"."Id"
	)
FROM
	"BatchGroup" "g_1"
ORDER BY
	"g_1"."Id"

-- Firebird.2.5 Firebird
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t1"
	)
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	"g_1"."Id",
	(
		SELECT FIRST 1
			1
		FROM
			"BatchItem" "i"
		WHERE
			"i"."GroupId" = "g_1"."Id" AND "i"."Id" > 8
		ORDER BY
			"i"."Id"
	),
	(
		SELECT FIRST 1
			"i_1"."Value"
		FROM
			"BatchItem" "i_1"
		WHERE
			"i_1"."GroupId" = "g_1"."Id" AND "i_1"."Id" > 8
		ORDER BY
			"i_1"."Id"
	)
FROM
	"BatchGroup" "g_1"
ORDER BY
	"g_1"."Id"

