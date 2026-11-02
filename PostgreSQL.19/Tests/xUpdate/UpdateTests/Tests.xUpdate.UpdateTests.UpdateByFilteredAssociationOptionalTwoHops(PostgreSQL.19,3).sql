-- PostgreSQL.19 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"FilteredMainTable"
SET
	"Field" = 'test'
FROM
	"FilteredMainTable" m_1
		LEFT JOIN "FilteredAssociatedTable" "a_AssociatedOptional" ON m_1."Id" = "a_AssociatedOptional"."Id" AND "a_AssociatedOptional"."Flag"
WHERE
	m_1."Id" = :id AND "a_AssociatedOptional"."Id" = "FilteredMainTable"."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	m_1."Field"
FROM
	"FilteredMainTable" m_1
ORDER BY
	m_1."Id"

