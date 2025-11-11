-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.18 PostgreSQL

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY ("ID")
)

-- PostgreSQL.18 PostgreSQL

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

-- PostgreSQL.18 PostgreSQL

DROP TABLE "DropTableTest"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

