-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

DROP TABLE "TempTable"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

