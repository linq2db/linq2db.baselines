﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
FROM
	"MainTable" t1
		INNER JOIN "AssociatedTable" "a_AssociatedRequired" ON t1."Id" = "a_AssociatedRequired"."Id"
WHERE
	t1."Id" = :id AND "a_AssociatedRequired"."Id" = "MainTable"."Id"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Field"
FROM
	"MainTable" t1
ORDER BY
	t1."Id"

