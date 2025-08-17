BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 0
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData",
	"x"."OrderData2"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData2" DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

