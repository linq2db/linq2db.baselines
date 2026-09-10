-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
CREATE TABLE IF NOT EXISTS "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."ID"
FROM
	"Parent" p
		INNER JOIN "TempTable" t ON p."ParentID" = t."ID"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

