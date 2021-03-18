BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

DROP TABLE "TempTable"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

