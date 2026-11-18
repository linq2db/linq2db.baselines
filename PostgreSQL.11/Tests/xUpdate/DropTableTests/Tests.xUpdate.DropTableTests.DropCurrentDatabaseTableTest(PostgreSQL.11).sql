-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.11 PostgreSQL
CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY ("ID")
)

-- PostgreSQL.11 PostgreSQL
INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."ID"
FROM
	"DropTableTest" t1

-- PostgreSQL.11 PostgreSQL
DROP TABLE "DropTableTest"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."ID"
FROM
	"DropTableTest" t1

