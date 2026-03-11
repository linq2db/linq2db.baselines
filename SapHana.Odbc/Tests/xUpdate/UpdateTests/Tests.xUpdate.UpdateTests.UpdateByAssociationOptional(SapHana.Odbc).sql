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
			"MainTable" "t1"
				LEFT JOIN "AssociatedTable" "a_AssociatedOptional" ON "t1"."Id" = "a_AssociatedOptional"."Id"
				LEFT JOIN "MainTable" "a_MainOptional" ON "a_AssociatedOptional"."Id" = "a_MainOptional"."Id"
		WHERE
			"t1"."Id" = ? AND "MainTable"."Id" = "a_MainOptional"."Id"
	)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

