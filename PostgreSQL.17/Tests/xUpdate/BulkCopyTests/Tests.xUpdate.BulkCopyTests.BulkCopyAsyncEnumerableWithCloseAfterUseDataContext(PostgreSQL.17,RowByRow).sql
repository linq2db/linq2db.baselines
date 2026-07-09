-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

