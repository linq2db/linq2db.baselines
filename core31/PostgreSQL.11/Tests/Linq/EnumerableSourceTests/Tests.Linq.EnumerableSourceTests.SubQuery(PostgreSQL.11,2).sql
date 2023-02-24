﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableToInsert"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."Value"
FROM
	"TableToInsert" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(3,'Janet'), (4,'Doe')
			) r("Id", "Value")
		WHERE
			t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)
	)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

