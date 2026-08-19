-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(10)

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(20)

-- PostgreSQL.9.3 PostgreSQL
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

