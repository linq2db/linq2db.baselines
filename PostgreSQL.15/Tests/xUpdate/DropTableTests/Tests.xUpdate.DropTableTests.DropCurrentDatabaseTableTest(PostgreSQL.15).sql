-- PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "DropTableTest"

-- PostgreSQL.15 PostgreSQL13

CREATE TABLE "DropTableTest"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY ("ID")
)

-- PostgreSQL.15 PostgreSQL13

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

-- PostgreSQL.15 PostgreSQL13

DROP TABLE "DropTableTest"

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."ID"
FROM
	"DropTableTest" t1

