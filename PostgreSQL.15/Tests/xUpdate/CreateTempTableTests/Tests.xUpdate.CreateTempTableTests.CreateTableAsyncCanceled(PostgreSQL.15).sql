-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

DROP TABLE "TempTable"

