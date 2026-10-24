-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"OuterTable"
SET
	"Field1" = (
		SELECT
			y."Field4"
		FROM
			"InnerTable" y
		WHERE
			"OuterTable"."Field2" = y."Field3"
		ORDER BY
			y."Field4"
		LIMIT 1
	)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"OuterTable" t1
ORDER BY
	t1."Id"

