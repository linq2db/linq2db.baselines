﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

