-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	CASE
		WHEN s."Kind" = 'C1' THEN s."Kind"
		ELSE NULL
	END
FROM
	"Parent" x
		INNER JOIN "SourceSchemaShape" s ON x."ParentID" = s."Id"
ORDER BY
	s."Id"

