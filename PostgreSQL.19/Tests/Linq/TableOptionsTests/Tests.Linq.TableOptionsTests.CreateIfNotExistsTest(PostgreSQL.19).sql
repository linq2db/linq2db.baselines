-- PostgreSQL.19 PostgreSQL12
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.19 PostgreSQL12
CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"CreateIfNotExistsTable" t1

-- PostgreSQL.19 PostgreSQL12
CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.19 PostgreSQL12
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.19 PostgreSQL12
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

