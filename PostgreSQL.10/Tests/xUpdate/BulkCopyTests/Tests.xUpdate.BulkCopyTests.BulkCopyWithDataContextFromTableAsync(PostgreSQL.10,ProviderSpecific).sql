-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(1)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(2)

INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(10)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(20)

INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

