-- PostgreSQL.12 PostgreSQL12
SELECT
	s."Id"
FROM
	"Parent" p
		INNER JOIN "SourceSchemaShape" s ON p."ParentID" = s."Id"
WHERE
	s."Kind" = 'C1'

