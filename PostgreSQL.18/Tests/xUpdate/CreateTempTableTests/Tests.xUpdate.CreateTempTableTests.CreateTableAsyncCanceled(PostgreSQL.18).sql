-- PostgreSQL.18 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.18 PostgreSQL13

SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.18 PostgreSQL13

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("ID")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL13

DROP TABLE "TempTable"

