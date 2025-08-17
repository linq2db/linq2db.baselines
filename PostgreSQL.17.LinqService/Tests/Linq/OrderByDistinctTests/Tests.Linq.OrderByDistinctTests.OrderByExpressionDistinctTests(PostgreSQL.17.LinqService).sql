BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
GROUP BY
	x."DuplicateData"
ORDER BY
	MAX((x."OrderData1"::decimal % 3)::decimal)
LIMIT :take OFFSET :skip 

