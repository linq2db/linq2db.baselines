-- Firebird.4 Firebird4
SELECT
	"g_1"."Id",
	"t1"."First_1",
	"t1"."First_2"
FROM
	"BatchGroup" "g_1"
		LEFT JOIN LATERAL (
			SELECT
				1 as "First_1",
				"i"."Value" as "First_2"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."GroupId" = "g_1"."Id"
			ORDER BY
				"i"."Id"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
ORDER BY
	"g_1"."Id"

-- Firebird.4 Firebird4
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t1"
	)
FROM rdb$database

-- Firebird.4 Firebird4
SELECT
	"g_1"."Id",
	"t1"."First_1",
	"t1"."First_2"
FROM
	"BatchGroup" "g_1"
		LEFT JOIN LATERAL (
			SELECT
				1 as "First_1",
				"i"."Value" as "First_2"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."GroupId" = "g_1"."Id" AND "i"."Id" > 8
			ORDER BY
				"i"."Id"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
ORDER BY
	"g_1"."Id"

