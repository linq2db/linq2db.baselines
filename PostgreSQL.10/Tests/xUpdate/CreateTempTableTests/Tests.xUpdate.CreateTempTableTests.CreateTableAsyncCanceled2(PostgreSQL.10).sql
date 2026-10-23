-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

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
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE "TempTable"

