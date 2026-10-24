-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

