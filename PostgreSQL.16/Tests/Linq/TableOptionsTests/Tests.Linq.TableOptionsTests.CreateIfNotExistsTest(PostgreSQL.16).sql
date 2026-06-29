-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

INSERT INTO "CreateIfNotExistsTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	2
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"CreateIfNotExistsTable" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

