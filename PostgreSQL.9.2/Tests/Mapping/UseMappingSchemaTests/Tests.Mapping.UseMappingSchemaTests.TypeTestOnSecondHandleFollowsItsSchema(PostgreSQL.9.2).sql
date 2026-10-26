-- PostgreSQL.9.2 PostgreSQL
SELECT
	s."Id"
FROM
	"Parent" p
		INNER JOIN "SourceSchemaShape" s ON p."ParentID" = s."Id"
WHERE
	s."Kind" = 'C1'

