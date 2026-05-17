-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	(
		SELECT
			MAX("g_1"."OrderData1") as "OrderData1",
			"g_1"."DuplicateData"
		FROM
			"OrderByDistinctData" "g_1"
		GROUP BY
			"g_1"."DuplicateData"
	) "x"
ORDER BY
	"x"."OrderData1"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData"
FROM
	"OrderByDistinctData" "x"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"x"."DuplicateData"
FROM
	(
		SELECT
			MIN("g_1"."OrderData1") as "OrderData1",
			"g_1"."DuplicateData"
		FROM
			"OrderByDistinctData" "g_1"
		GROUP BY
			"g_1"."DuplicateData"
	) "x"
ORDER BY
	"x"."OrderData1" DESC
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

