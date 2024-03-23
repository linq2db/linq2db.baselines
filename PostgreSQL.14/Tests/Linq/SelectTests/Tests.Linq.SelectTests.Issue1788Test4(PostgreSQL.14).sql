BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1788"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table1788"
(
	"Id"     Int NOT NULL,
	"Value1" Int NOT NULL,

	CONSTRAINT "PK_Table1788" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(1,11),
(2,22),
(3,33)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value1"
FROM
	"Table1788" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	l."Id",
	l."Value1"
FROM
	"Table1788" p
		LEFT JOIN "Table1788" l ON l."Id" = p."Id" + 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1788"

