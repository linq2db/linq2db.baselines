BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "OrderByDistinctData"
(
	"Id"            Int  NOT NULL,
	"DuplicateData" text     NULL,
	"OrderData1"    Int  NOT NULL,
	"OrderData2"    Int  NOT NULL,

	CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(1,'One',1,1),
(10,'Two',1,1),
(100,'Three',1,1)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	Max(x."OrderData1")
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	Min(x."OrderData1") DESC
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	Max(x."OrderData1"),
	Max(x."OrderData2")
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	Max(x."OrderData1"),
	Min(x."OrderData2") DESC
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	Min(x."OrderData1") DESC,
	Min(x."OrderData2") DESC
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
	Max(x."OrderData1"),
	Min(x."OrderData2") DESC
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "OrderByDistinctData"

