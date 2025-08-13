BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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

