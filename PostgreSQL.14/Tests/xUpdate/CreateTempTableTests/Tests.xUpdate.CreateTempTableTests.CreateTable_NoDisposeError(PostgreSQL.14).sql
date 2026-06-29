-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE "TempTable"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

