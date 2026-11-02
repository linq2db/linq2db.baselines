-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	"FilteredAssociatedTable"
SET
	"Note" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"FilteredMainTable" "m_1"
				LEFT JOIN "FilteredAssociatedTable" "a_AssociatedOptional" ON "m_1"."Id" = "a_AssociatedOptional"."Id" AND "a_AssociatedOptional"."Flag" = 1
		WHERE
			"m_1"."Id" = ? AND "FilteredAssociatedTable"."Id" = "a_AssociatedOptional"."Id"
	)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"a"."Note"
FROM
	"FilteredAssociatedTable" "a"
ORDER BY
	"a"."Id"

