-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

DROP TABLE "TempTable"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

