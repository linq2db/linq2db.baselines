BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

BeforeExecute
INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(10)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(20)

BeforeExecute
INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "SimpleBulkCopyTable"

