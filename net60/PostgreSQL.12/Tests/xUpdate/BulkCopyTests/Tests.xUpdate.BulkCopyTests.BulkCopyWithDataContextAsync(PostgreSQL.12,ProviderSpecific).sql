BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

BeforeExecute
INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

