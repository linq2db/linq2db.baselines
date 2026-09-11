-- PostgreSQL.9.3 PostgreSQL
UPDATE
	"TableToInsert"
SET
	"Value" = r."Value"
FROM
	(VALUES
		(3,'Janet Updated'), (4,'Doe Updated')
	) r("Id", "Value")
WHERE
	"TableToInsert"."Id" = r."Id"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

