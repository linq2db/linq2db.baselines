BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "IsNullOrEmptyTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "IsNullOrEmptyTable"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "IsNullOrEmptyTable"
(
	"Id",
	"Value"
)
VALUES
(1,'   '),
(2,'')

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."Id",
	p."Value"
FROM
	"IsNullOrEmptyTable" p
WHERE
	(p."Value" IS NULL OR Length(p."Value") = 0)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "IsNullOrEmptyTable"

