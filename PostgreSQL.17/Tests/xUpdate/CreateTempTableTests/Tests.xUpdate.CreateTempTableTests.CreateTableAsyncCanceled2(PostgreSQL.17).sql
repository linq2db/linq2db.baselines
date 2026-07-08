-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

DROP TABLE "TempTable"

