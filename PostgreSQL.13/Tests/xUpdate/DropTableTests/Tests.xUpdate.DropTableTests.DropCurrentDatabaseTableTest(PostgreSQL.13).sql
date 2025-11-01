-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE "DropTableTest"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

