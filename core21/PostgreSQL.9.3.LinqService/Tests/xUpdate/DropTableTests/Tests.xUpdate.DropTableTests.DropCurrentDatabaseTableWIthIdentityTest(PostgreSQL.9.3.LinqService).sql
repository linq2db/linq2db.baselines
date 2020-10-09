BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "DropTableTestID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "DropTableTestID"
(
	"ID"  SERIAL  NOT NULL,
	"ID1" Int     NOT NULL,

	CONSTRAINT "PK_DropTableTestID" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "DropTableTestID"
(
	"ID1"
)
VALUES
(
	2
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t."ID", 
	t."ID1"
FROM
	"DropTableTestID" t

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "DropTableTestID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t1."ID", 
	t1."ID1"
FROM
	"DropTableTestID" t1

