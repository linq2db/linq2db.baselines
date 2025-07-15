BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE "TempTable"

