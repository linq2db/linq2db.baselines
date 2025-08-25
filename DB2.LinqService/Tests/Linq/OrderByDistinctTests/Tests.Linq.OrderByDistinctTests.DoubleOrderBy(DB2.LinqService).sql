BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"q1"."Id",
	"q1"."DuplicateData",
	"q1"."OrderData1",
	"q1"."OrderData2"
FROM
	(
		SELECT
			"t1"."Id"
		FROM
			"OrderByDistinctData" "t1"
		ORDER BY
			"t1"."OrderData2"
		FETCH NEXT 3 ROWS ONLY
	) "q2"
		INNER JOIN "OrderByDistinctData" "q1" ON "q1"."Id" = "q2"."Id"
ORDER BY
	"q1"."OrderData1"

