BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE "TempTable"
(
	"ID" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	p."ParentID"
FROM
	"Parent" p

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE "TempTable"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "TempTable"

