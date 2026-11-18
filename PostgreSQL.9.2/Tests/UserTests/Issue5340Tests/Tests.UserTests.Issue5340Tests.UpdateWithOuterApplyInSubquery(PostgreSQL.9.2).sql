-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"OuterTable"
SET
	"Field1" = (
		SELECT
			b."Field4"
		FROM
			"InnerTable" b
		WHERE
			"OuterTable"."Field2" = b."Field3"
		ORDER BY
			b."Field4"
		LIMIT 1
	)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"OuterTable" t1
ORDER BY
	t1."Id"

