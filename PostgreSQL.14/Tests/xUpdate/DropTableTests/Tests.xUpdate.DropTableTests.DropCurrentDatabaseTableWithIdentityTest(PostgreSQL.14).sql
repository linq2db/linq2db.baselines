-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

DROP TABLE IF EXISTS "DropTableTestID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

CREATE TABLE "DropTableTestID"
(
	"ID"  SERIAL  NOT NULL,
	"ID1" Int     NOT NULL,

	CONSTRAINT "PK_DropTableTestID" PRIMARY KEY ("ID")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

INSERT INTO "DropTableTestID"
(
	"ID1"
)
VALUES
(
	2
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	t."ID",
	t."ID1"
FROM
	"DropTableTestID" t

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

DROP TABLE "DropTableTestID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	t1."ID",
	t1."ID1"
FROM
	"DropTableTestID" t1

