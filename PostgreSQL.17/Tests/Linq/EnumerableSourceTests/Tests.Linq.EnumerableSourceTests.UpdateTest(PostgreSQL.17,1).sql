BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableToInsert"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"TableToInsert"
SET
	"Value" = r."Value"
FROM
	(VALUES
		(2,'Janet Updated'), (3,'Doe Updated')
	) r("Id", "Value")
WHERE
	"TableToInsert"."Id" = r."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

