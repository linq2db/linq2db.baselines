-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.18 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

DROP TABLE "TempTable"

