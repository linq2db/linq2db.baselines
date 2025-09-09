BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

