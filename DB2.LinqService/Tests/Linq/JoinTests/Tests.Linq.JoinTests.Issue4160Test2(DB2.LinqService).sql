BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"cc_1"."Name"
FROM
	"Issue4160Person" "t1"
		LEFT JOIN (
			SELECT
				"cc"."Name",
				ROW_NUMBER() OVER (PARTITION BY "cc"."Code" ORDER BY "cc"."Code") as "rn",
				"cc"."Code"
			FROM
				"Issue4160City" "cc"
		) "cc_1" ON ("cc_1"."Code" = "t1"."Code" OR "cc_1"."Code" IS NULL AND "t1"."Code" IS NULL) AND "cc_1"."rn" <= 1

