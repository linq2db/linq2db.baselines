BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t_1"."DuplicateData",
	(
		SELECT
			COUNT(*)
		FROM
			"OrderByDistinctData" "c_1"
		WHERE
			"c_1"."DuplicateData" = "t_1"."DuplicateData" OR "c_1"."DuplicateData" IS NULL AND "t_1"."DuplicateData" IS NULL
	)
FROM
	(
		SELECT
			"t"."Id",
			"t"."DuplicateData"
		FROM
			"OrderByDistinctData" "t"
		FETCH NEXT 2 ROWS ONLY
	) "t_1"
ORDER BY
	"t_1"."Id" DESC

