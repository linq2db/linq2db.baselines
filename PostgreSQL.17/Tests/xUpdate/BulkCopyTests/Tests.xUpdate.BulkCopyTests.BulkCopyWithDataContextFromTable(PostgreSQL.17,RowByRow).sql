-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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

