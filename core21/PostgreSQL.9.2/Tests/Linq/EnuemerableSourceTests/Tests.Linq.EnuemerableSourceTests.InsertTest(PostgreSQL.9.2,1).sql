BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TableToInsert"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
		(2,'Janet'), (3,'Doe')
	) r("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = r."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
		(2,'Janet'), (3,'Doe')
	) r("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = r."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

