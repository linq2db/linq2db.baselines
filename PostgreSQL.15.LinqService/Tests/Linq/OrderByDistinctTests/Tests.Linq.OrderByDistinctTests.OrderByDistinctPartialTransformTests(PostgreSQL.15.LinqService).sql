BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData",
	x."OrderData2"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData2" DESC
LIMIT :take OFFSET :skip 

