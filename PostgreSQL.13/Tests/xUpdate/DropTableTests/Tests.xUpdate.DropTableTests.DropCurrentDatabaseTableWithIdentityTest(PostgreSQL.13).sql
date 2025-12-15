-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "DropTableTestID"

-- PostgreSQL.13 PostgreSQL

CREATE TABLE "DropTableTestID"
(
	"ID"  SERIAL  NOT NULL,
	"ID1" Int     NOT NULL,

	CONSTRAINT "PK_DropTableTestID" PRIMARY KEY ("ID")
)

-- PostgreSQL.13 PostgreSQL

INSERT INTO "DropTableTestID"
(
	"ID1"
)
VALUES
(
	2
)

-- PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."ID1"
FROM
	"DropTableTestID" t

-- PostgreSQL.13 PostgreSQL

DROP TABLE "DropTableTestID"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ID",
	t1."ID1"
FROM
	"DropTableTestID" t1

