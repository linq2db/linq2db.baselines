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

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(10)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(20)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 30

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

