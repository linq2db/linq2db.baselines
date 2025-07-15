BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
		(3,'Janet'), (4,'Doe')
	) t1("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
		(3,'Janet'), (4,'Doe')
	) t1("Id", "Value")
		LEFT JOIN "TableToInsert" t ON t."Id" = t1."Id"
WHERE
	t."Id" IS NULL

