BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TableToInsert"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
			(SELECT CAST(NULL AS Int)"Id", CAST(NULL AS text)"Value" WHERE 1 = 0) t1("Id", "Value")
		WHERE
			t."Id" = t1."Id" AND (t."Value" = t1."Value" OR t."Value" IS NULL AND t1."Value" IS NULL)
	)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

