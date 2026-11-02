-- PostgreSQL.9.3 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"FilteredAssociatedTable"
SET
	"Note" = 'test'
FROM
	"FilteredMainTable" m_1
WHERE
	m_1."Id" = :id AND m_1."Id" = "FilteredAssociatedTable"."Id" AND
	"FilteredAssociatedTable"."Flag"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	a."Note"
FROM
	"FilteredAssociatedTable" a
ORDER BY
	a."Id"

