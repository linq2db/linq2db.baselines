-- Firebird.2.5 Firebird
SELECT DISTINCT
	(
		SELECT FIRST 1
			"cc"."Name"
		FROM
			"LookupCity" "cc"
		WHERE
			"cc"."Code" = "t1"."Code" OR "cc"."Code" IS NULL AND "t1"."Code" IS NULL
	)
FROM
	"LookupPerson" "t1"

