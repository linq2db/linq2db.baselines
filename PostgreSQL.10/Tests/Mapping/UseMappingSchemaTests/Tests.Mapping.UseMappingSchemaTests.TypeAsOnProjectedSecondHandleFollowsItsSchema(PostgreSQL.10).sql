-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

