-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1"
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1" DESC
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1",
	x."OrderData2"
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1",
	x."OrderData2" DESC
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1" DESC,
	x."OrderData2" DESC
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
LIMIT :take OFFSET :skip 

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
ORDER BY
	x."OrderData1",
	x."OrderData2" DESC
LIMIT :take OFFSET :skip 

