-- SapHana.Native SapHana
SELECT DISTINCT
	"t1"."Value_1"
FROM
	"LookupPerson" "pe"
		LEFT JOIN LATERAL (
			SELECT
				"cc"."Name" as "Value_1"
			FROM
				"LookupCity" "cc"
			WHERE
				"cc"."Code" = "pe"."Code" OR "cc"."Code" IS NULL AND "pe"."Code" IS NULL
			LIMIT 1
		) "t1" ON 1=1

