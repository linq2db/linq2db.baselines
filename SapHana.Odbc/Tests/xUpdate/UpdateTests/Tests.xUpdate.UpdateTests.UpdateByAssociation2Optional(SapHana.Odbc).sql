-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
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
			"AssociatedTable" "p"
				LEFT JOIN "MainTable" "a_MainOptional" ON "p"."Id" = "a_MainOptional"."Id"
		WHERE
			"p"."Id" = ? AND "MainTable"."Id" = "a_MainOptional"."Id"
	)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

