BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DistinctOrderByTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DistinctOrderByTable"
(
	"Id" Int  NOT NULL,
	"F1" Int  NOT NULL,
	"F2" text     NULL,
	"F3" Int  NOT NULL,

	CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2",
	"F3"
)
VALUES
(8,8,'8',5),
(3,3,'3',3),
(2,2,'2',1),
(6,3,'3',4),
(1,3,'3',7),
(5,5,'5',2),
(7,2,'2',8),
(4,4,'4',6)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	r."F1",
	r."F2"
FROM
	"DistinctOrderByTable" r
ORDER BY
	r."F1" DESC

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DistinctOrderByTable"

