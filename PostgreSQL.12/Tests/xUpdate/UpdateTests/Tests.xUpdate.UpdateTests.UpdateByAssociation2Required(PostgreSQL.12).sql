-- PostgreSQL.12 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
FROM
	"AssociatedTable" p
WHERE
	p."Id" = :id AND p."Id" = "MainTable"."Id"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."Id",
	t1."Field"
FROM
	"MainTable" t1
ORDER BY
	t1."Id"

