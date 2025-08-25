BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData",
	"x"."OrderData2"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData2" DESC
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

