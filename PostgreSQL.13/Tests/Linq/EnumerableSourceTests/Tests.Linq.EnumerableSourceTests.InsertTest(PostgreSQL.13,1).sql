BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	(VALUES
		(2,'Janet'), (3,'Doe')
	) t1("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	(VALUES
		(2,'Janet'), (3,'Doe')
	) t1("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

