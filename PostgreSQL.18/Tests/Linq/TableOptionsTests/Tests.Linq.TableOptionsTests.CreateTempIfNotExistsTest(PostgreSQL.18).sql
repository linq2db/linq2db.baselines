-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.18 PostgreSQL12

CREATE TEMPORARY TABLE "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"CreateIfNotExistsTable" t1

-- PostgreSQL.18 PostgreSQL12

CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

