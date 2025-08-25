BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT DISTINCT
	(
		SELECT FIRST 1
			"cc"."Name"
		FROM
			"Issue4160City" "cc"
		WHERE
			"cc"."Code" = "pe"."Code" OR "cc"."Code" IS NULL AND "pe"."Code" IS NULL
	)
FROM
	"Issue4160Person" "pe"

