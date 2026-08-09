-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.9.3 PostgreSQL
CREATE TEMPORARY TABLE "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"CreateIfNotExistsTable" t1

-- PostgreSQL.9.3 PostgreSQL
CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "CreateIfNotExistsTable"

