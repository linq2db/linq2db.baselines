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
	),
	(
		SELECT FIRST 1
			"i_1"."Id"
		FROM
			"BatchItem" "i_1"
		WHERE
			"i_1"."GroupId" = "g_1"."Id" AND "i_1"."Id" > 8
	),
	(
		SELECT FIRST 1
			"i_2"."Value"
		FROM
			"BatchItem" "i_2"
		WHERE
			"i_2"."GroupId" = "g_1"."Id" AND "i_2"."Id" > 8
	),
	(
		SELECT FIRST 1
			"i_3"."GroupId"
		FROM
			"BatchItem" "i_3"
		WHERE
			"i_3"."GroupId" = "g_1"."Id" AND "i_3"."Id" > 8
	),
	(
		SELECT FIRST 1
			"i_4"."Name"
		FROM
			"BatchItem" "i_4"
		WHERE
			"i_4"."GroupId" = "g_1"."Id" AND "i_4"."Id" > 8
	)
FROM
	"BatchGroup" "g_1"
ORDER BY
	"g_1"."Id"

