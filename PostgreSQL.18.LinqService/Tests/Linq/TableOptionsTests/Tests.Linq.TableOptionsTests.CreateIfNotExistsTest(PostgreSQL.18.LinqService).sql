BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"CreateIfNotExistsTable" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

CREATE TABLE IF NOT EXISTS "CreateIfNotExistsTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "CreateIfNotExistsTable"

