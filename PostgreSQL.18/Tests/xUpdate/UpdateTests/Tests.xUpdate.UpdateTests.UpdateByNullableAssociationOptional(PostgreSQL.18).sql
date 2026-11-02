-- PostgreSQL.18 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"NullableKeyMainTable"
SET
	"Field" = 'test'
FROM
	"NullableKeyMainTable" m_1
		LEFT JOIN "NullableKeyAssociatedTable" "a_AssociatedOptional" ON m_1."Ref" = "a_AssociatedOptional"."Ref" OR m_1."Ref" IS NULL AND "a_AssociatedOptional"."Ref" IS NULL
WHERE
	m_1."Id" = :id AND ("a_AssociatedOptional"."Ref" = "NullableKeyMainTable"."Ref" OR "a_AssociatedOptional"."Ref" IS NULL AND "NullableKeyMainTable"."Ref" IS NULL)

-- PostgreSQL.18 PostgreSQL12
SELECT
	m_1."Field"
FROM
	"NullableKeyMainTable" m_1
ORDER BY
	m_1."Id"

