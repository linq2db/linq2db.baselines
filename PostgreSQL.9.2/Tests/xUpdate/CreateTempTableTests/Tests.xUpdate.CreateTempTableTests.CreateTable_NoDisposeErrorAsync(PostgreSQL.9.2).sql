-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.9.2 PostgreSQL
CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE "TempTable"

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

