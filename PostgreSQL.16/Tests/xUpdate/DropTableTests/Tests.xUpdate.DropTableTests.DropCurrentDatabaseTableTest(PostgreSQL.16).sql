-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY ("ID")
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

DROP TABLE "DropTableTest"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

