-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.15 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.15 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.15 PostgreSQL

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL
)

-- PostgreSQL.15 PostgreSQL

INSERT INTO testdata.public."DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	testdata.public."DropTableTest" t1

-- PostgreSQL.15 PostgreSQL

DROP TABLE testdata.public."DropTableTest"

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	testdata.public."DropTableTest" t1

