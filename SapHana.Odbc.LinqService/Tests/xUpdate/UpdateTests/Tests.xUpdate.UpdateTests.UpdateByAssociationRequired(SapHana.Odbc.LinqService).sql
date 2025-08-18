BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
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
				INNER JOIN "AssociatedTable" "a_AssociatedRequired" ON "t1"."Id" = "a_AssociatedRequired"."Id"
				INNER JOIN "MainTable" "a_MainRequired" ON "a_AssociatedRequired"."Id" = "a_MainRequired"."Id"
		WHERE
			"t1"."Id" = ? AND "MainTable"."Id" = "a_MainRequired"."Id" AND
			("MainTable"."Field" = "a_MainRequired"."Field" OR "MainTable"."Field" IS NULL AND "a_MainRequired"."Field" IS NULL)
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

