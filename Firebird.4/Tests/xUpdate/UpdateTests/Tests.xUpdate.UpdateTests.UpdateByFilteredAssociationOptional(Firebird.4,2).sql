-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 2

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
				LEFT JOIN "FilteredAssociatedTable" "a_AssociatedOptional" ON "m_1"."Id" = "a_AssociatedOptional"."Id" AND "a_AssociatedOptional"."Flag"
		WHERE
			"m_1"."Id" = @id AND "FilteredAssociatedTable"."Id" = "a_AssociatedOptional"."Id"
	)

-- Firebird.4 Firebird4
SELECT
	"a"."Note"
FROM
	"FilteredAssociatedTable" "a"
ORDER BY
	"a"."Id"

