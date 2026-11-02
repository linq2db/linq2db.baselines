-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 2

UPDATE
	"FilteredMainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"FilteredMainTable" "m_1"
				LEFT JOIN "FilteredAssociatedTable" "a_AssociatedOptional" ON "m_1"."Id" = "a_AssociatedOptional"."Id" AND "a_AssociatedOptional"."Flag"
				LEFT JOIN "FilteredMainTable" "a_MainOptional" ON "a_AssociatedOptional"."Id" = "a_MainOptional"."Id"
		WHERE
			"m_1"."Id" = @id AND "FilteredMainTable"."Id" = "a_MainOptional"."Id"
	)

-- Firebird.3 Firebird3
SELECT
	"m_1"."Field"
FROM
	"FilteredMainTable" "m_1"
ORDER BY
	"m_1"."Id"

