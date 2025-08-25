BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT DISTINCT
	(
		SELECT
			"cc"."Name"
		FROM
			"Issue4160City" "cc"
		WHERE
			"cc"."Code" = "pe"."Code" OR "cc"."Code" IS NULL AND "pe"."Code" IS NULL
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue4160Person" "pe"

