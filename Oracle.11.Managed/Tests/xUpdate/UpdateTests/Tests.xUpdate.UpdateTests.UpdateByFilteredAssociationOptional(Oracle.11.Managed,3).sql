-- Oracle.11.Managed Oracle11
DECLARE @id Int32
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
			"FilteredMainTable" m_1
				LEFT JOIN "FilteredAssociatedTable" a_AssociatedOptional ON m_1."Id" = a_AssociatedOptional."Id" AND a_AssociatedOptional."Flag" = 1
		WHERE
			m_1."Id" = :id AND "FilteredAssociatedTable"."Id" = a_AssociatedOptional."Id"
	)

-- Oracle.11.Managed Oracle11
SELECT
	a."Note"
FROM
	"FilteredAssociatedTable" a
ORDER BY
	a."Id"

