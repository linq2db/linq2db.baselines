-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ID"
FROM
	"DropTableTest" t1

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE "DropTableTest"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ID"
FROM
	"DropTableTest" t1

