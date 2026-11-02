-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2

UPDATE
	"FilteredAssociatedTable"
SET
	"Note" = 'test'
FROM
	"FilteredMainTable" m_1
WHERE
	m_1."Id" = :id AND m_1."Id" = "FilteredAssociatedTable"."Id" AND
	"FilteredAssociatedTable"."Flag"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	a."Note"
FROM
	"FilteredAssociatedTable" a
ORDER BY
	a."Id"

