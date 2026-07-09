-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.18 PostgreSQL12

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.18 PostgreSQL12

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.18 PostgreSQL12

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY ("ID")
)

-- PostgreSQL.18 PostgreSQL12

INSERT INTO testdata.public."DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.18 PostgreSQL12

SELECT
	t1."ID"
FROM
	testdata.public."DropTableTest" t1

-- PostgreSQL.18 PostgreSQL12

DROP TABLE testdata.public."DropTableTest"

-- PostgreSQL.18 PostgreSQL12

SELECT
	t1."ID"
FROM
	testdata.public."DropTableTest" t1

