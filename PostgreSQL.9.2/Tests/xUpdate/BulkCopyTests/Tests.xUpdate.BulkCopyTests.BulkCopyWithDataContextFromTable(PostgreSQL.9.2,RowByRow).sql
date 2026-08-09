-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

-- PostgreSQL.9.2 PostgreSQL
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

