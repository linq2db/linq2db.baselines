-- Firebird.2.5 Firebird
SELECT DISTINCT
	(
		SELECT FIRST 1
			"cc"."Name"
		FROM
			"LookupCity" "cc"
		WHERE
			"cc"."Code" = "pe"."Code" OR "cc"."Code" IS NULL AND "pe"."Code" IS NULL
	)
FROM
	"LookupPerson" "pe"

