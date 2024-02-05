BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableToInsert"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	r."Id",
	r."Value"
FROM
	(VALUES
		(3,'Janet'), (4,'Doe')
	) r("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = r."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	r."Id",
	r."Value"
FROM
	(VALUES
		(3,'Janet'), (4,'Doe')
	) r("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = r."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

