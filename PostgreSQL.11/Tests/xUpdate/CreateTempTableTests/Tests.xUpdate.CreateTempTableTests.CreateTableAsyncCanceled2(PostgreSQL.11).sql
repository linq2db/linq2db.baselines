-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.11 PostgreSQL
CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.11 PostgreSQL
INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.11 PostgreSQL
DROP TABLE "TempTable"

