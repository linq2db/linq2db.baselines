-- PostgreSQL.13 PostgreSQL13
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

