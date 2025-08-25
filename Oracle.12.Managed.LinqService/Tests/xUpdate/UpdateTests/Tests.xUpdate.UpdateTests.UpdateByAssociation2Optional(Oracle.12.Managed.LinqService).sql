BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @id Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"AssociatedTable" p
				LEFT JOIN "MainTable" a_MainOptional ON p."Id" = a_MainOptional."Id"
		WHERE
			p."Id" = :id AND "MainTable"."Id" = a_MainOptional."Id" AND
			("MainTable"."Field" = a_MainOptional."Field" OR "MainTable"."Field" IS NULL AND a_MainOptional."Field" IS NULL)
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Field"
FROM
	"MainTable" t1
ORDER BY
	t1."Id"

