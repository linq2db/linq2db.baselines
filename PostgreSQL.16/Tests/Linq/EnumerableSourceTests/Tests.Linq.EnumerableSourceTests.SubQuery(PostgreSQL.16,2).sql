BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

