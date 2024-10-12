BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

