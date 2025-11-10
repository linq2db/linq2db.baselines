-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY ("ID")
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE "DropTableTest"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

