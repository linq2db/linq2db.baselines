BeforeExecute
-- PostgreSQL.18 PostgreSQL

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
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

