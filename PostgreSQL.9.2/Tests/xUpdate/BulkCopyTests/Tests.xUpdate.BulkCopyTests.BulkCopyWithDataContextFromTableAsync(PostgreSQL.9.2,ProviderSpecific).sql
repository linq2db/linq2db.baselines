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

INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(10)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(20)

INSERT ASYNC BULK "SimpleBulkCopyTable"(Id)

