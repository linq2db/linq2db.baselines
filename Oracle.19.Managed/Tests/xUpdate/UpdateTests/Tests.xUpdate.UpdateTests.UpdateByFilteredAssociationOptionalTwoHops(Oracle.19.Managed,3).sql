-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 3

UPDATE
	"FilteredMainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"FilteredMainTable" m_1
				LEFT JOIN "FilteredAssociatedTable" a_AssociatedOptional ON m_1."Id" = a_AssociatedOptional."Id" AND a_AssociatedOptional."Flag" = 1
				LEFT JOIN "FilteredMainTable" a_MainOptional ON a_AssociatedOptional."Id" = a_MainOptional."Id"
		WHERE
			m_1."Id" = :id AND "FilteredMainTable"."Id" = a_MainOptional."Id"
	)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	m_1."Field"
FROM
	"FilteredMainTable" m_1
ORDER BY
	m_1."Id"

