BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL (asynchronously)

CREATE TABLE "TempTable"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TempTable"

