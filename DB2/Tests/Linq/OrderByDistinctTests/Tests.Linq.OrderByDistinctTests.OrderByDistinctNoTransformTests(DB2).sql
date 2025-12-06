-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData",
	"x"."OrderData1"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1"
OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 

