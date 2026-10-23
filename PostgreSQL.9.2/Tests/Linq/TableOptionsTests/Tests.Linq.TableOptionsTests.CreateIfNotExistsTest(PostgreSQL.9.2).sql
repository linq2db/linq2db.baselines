-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"CreateIfNotExistsTable" t1

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

