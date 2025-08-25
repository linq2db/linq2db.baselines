BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Field"
FROM
	"MainTable" t1
ORDER BY
	t1."Id"

