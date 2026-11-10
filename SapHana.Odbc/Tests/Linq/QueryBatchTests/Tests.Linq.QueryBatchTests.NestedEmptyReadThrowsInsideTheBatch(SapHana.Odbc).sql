-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id"
FROM
	"BatchGroup" "g_1"
		INNER JOIN LATERAL (
			SELECT
				"i"."Id"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."GroupId" = "g_1"."Id" AND "i"."Id" > 8
			LIMIT 1
		) "t1" ON 1=1
ORDER BY
	"g_1"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id"
FROM
	"BatchGroup" "g_1"
		LEFT JOIN LATERAL (
			SELECT
				"i"."Id"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."GroupId" = "g_1"."Id" AND "i"."Id" > 8
			LIMIT 1
		) "t1" ON 1=1
ORDER BY
	"g_1"."Id"

