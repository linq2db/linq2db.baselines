-- SapHana.Native SapHana
SELECT
	"g_1"."Id",
	"t1"."V"
FROM
	"BatchGroup" "g_1"
		LEFT JOIN LATERAL (
			SELECT
				"i"."Value" as "V"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."GroupId" = "g_1"."Id"
			ORDER BY
				"i"."Id"
			LIMIT 1
		) "t1" ON 1=1
WHERE
	"g_1"."Id" = 1
UNION ALL
SELECT
	"g_2"."Id",
	"t2"."V"
FROM
	"BatchGroup" "g_2"
		LEFT JOIN LATERAL (
			SELECT
				"i_1"."Value" as "V"
			FROM
				"BatchItem" "i_1"
			WHERE
				"i_1"."GroupId" = "g_2"."Id"
			ORDER BY
				"i_1"."Id"
			LIMIT 1
		) "t2" ON 1=1
WHERE
	"g_2"."Id" = 2

-- SapHana.Native SapHana
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t1"
	)
FROM DUMMY

