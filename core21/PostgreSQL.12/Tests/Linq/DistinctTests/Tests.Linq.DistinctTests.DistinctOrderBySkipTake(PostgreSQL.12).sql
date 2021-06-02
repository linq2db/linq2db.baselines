BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DistinctOrderByTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DistinctOrderByTable"
(
	"Id" Int  NOT NULL,
	"F1" Int  NOT NULL,
	"F2" text     NULL,

	CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(8,8,'8'),
(3,3,'3'),
(2,2,'2'),
(6,3,'3'),
(1,3,'3'),
(5,5,'5'),
(7,2,'2'),
(4,4,'4')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t2."F2"
FROM
	(
		SELECT DISTINCT
			t1."F1",
			t1."F2"
		FROM
			"DistinctOrderByTable" t1
	) t2
ORDER BY
	t2."F1" DESC
LIMIT :take OFFSET :skip 

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DistinctOrderByTable"

