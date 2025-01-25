BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "OrderByDistinctData"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "OrderByDistinctData"
(
	"Id"            Int  NOT NULL,
	"DuplicateData" text     NULL,
	"OrderData1"    Int  NOT NULL,
	"OrderData2"    Int  NOT NULL,

	CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(1,'One',1,1),
(2,'One',1,10),
(3,'One',2,2),
(4,'One',3,3),
(5,'One',4,4),
(6,'One',5,5),
(10,'Two',1,1),
(20,'Two',1,10),
(30,'Two',2,2),
(40,'Two',3,3),
(50,'Two',4,4),
(60,'Two',5,5),
(100,'Three',1,1),
(200,'Three',1,10),
(300,'Three',2,2),
(400,'Three',3,3),
(500,'Three',4,4),
(600,'Three',5,5)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	q1."Id",
	q1."DuplicateData",
	q1."OrderData1",
	q1."OrderData2"
FROM
	(
		SELECT
			t1."Id"
		FROM
			"OrderByDistinctData" t1
		ORDER BY
			t1."OrderData2"
		LIMIT :take
	) q2
		INNER JOIN "OrderByDistinctData" q1 ON q1."Id" = q2."Id"
ORDER BY
	q1."OrderData1"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "OrderByDistinctData"

