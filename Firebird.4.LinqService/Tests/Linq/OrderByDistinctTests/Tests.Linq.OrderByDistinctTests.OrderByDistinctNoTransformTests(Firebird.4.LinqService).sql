BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 0
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	"x"."DuplicateData",
	"x"."OrderData1"
FROM
	"OrderByDistinctData" "x"
ORDER BY
	"x"."OrderData1"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

