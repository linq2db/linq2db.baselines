-- PostgreSQL.19 PostgreSQL13

DROP TABLE IF EXISTS "DropTableTestID"

-- PostgreSQL.19 PostgreSQL13

CREATE TABLE "DropTableTestID"
(
	"ID"  SERIAL  NOT NULL,
	"ID1" Int     NOT NULL,

	CONSTRAINT "PK_DropTableTestID" PRIMARY KEY ("ID")
)

-- PostgreSQL.19 PostgreSQL13

INSERT INTO "DropTableTestID"
(
	"ID1"
)
VALUES
(
	2
)

-- PostgreSQL.19 PostgreSQL13

SELECT
	t."ID",
	t."ID1"
FROM
	"DropTableTestID" t

-- PostgreSQL.19 PostgreSQL13

DROP TABLE "DropTableTestID"

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ID",
	t1."ID1"
FROM
	"DropTableTestID" t1

