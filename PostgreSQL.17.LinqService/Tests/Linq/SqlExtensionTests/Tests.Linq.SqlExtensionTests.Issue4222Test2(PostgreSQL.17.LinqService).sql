BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Entry"
(
	"Id"     uuid NOT NULL,
	"RecSrc" text     NULL,
	"Value"  Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	e."Id",
	e."RecSrc",
	e."Value"
FROM
	"Entry" e
WHERE
	(e."RecSrc", e."Value") IN (('default', 2007), ('other', 2008))

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Entry"

