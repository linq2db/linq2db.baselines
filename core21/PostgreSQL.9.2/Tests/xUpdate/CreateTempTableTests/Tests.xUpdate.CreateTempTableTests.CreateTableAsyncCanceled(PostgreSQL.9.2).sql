BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "TempTable"

