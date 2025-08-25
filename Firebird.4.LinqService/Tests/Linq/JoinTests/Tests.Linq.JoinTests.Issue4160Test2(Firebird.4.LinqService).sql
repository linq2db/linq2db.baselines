BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT DISTINCT
	"cc_1"."Name"
FROM
	"Issue4160Person" "t1"
		LEFT JOIN LATERAL (
			SELECT
				"cc"."Name"
			FROM
				"Issue4160City" "cc"
			WHERE
				"cc"."Code" = "t1"."Code" OR "cc"."Code" IS NULL AND "t1"."Code" IS NULL
			FETCH NEXT 1 ROWS ONLY
		) "cc_1" ON 1=1

