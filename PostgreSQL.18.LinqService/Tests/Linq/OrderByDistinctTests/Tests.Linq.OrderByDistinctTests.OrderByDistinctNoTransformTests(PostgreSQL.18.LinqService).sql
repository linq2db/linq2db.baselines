BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData",
	x."OrderData1"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1"
LIMIT :take OFFSET :skip 

