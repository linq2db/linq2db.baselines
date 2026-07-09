-- PostgreSQL.18 PostgreSQL13

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

-- PostgreSQL.18 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

