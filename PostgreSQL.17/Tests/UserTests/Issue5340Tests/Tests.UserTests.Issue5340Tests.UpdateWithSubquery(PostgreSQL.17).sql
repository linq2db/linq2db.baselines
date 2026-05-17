-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"OuterTable" t1
ORDER BY
	t1."Id"

