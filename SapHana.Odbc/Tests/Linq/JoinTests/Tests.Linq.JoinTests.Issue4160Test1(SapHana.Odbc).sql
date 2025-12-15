-- SapHana.Odbc SapHanaOdbc

SELECT DISTINCT
	"t1"."Value_1"
FROM
	"Issue4160Person" "pe"
		LEFT JOIN LATERAL (
			SELECT
				"cc"."Name" as "Value_1"
			FROM
				"Issue4160City" "cc"
			WHERE
				"cc"."Code" = "pe"."Code" OR "cc"."Code" IS NULL AND "pe"."Code" IS NULL
			LIMIT 1
		) "t1" ON 1=1

