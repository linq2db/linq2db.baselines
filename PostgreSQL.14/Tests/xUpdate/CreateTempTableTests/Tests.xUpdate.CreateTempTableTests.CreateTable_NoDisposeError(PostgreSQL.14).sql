-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TempTable"

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

