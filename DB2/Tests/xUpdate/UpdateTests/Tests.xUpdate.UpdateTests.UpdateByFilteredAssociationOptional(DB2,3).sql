-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
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
				LEFT JOIN "FilteredAssociatedTable" "a_AssociatedOptional" ON "m_1"."Id" = "a_AssociatedOptional"."Id" AND "a_AssociatedOptional"."Flag"
		WHERE
			"m_1"."Id" = @id AND "FilteredAssociatedTable"."Id" = "a_AssociatedOptional"."Id"
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"a"."Note"
FROM
	"FilteredAssociatedTable" "a"
ORDER BY
	"a"."Id"

