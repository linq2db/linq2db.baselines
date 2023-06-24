BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "IsNullOrEmptyTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "IsNullOrEmptyTable"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "IsNullOrEmptyTable"
(
	"Id",
	"Value"
)
VALUES
(1,'x   '),
(2,'xxxx ')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Id",
	p."Value"
FROM
	"IsNullOrEmptyTable" p
WHERE
	Length(p."Value") = 4

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "IsNullOrEmptyTable"

