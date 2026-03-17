-- Firebird.2.5 Firebird

SELECT DISTINCT
	(
		SELECT FIRST 1
			"cc"."Name"
		FROM
			"Issue4160City" "cc"
		WHERE
			"cc"."Code" = "t1"."Code" OR "cc"."Code" IS NULL AND "t1"."Code" IS NULL
	)
FROM
	"Issue4160Person" "t1"

