-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t1."ID"
FROM
	"TempTable" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

