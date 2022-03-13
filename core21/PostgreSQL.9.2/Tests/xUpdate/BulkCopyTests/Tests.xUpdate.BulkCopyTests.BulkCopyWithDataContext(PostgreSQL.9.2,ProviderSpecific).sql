BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
INSERT BULK "SimpleBulkCopyTable"(Id)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

