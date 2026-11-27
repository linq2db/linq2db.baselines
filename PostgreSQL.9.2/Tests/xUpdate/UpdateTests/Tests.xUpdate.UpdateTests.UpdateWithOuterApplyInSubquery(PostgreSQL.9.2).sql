-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"UpdateOuterTable"
SET
	"Field1" = (
		SELECT
			b."Field4"
		FROM
			"UpdateInnerTable" b
		WHERE
			"UpdateOuterTable"."Field2" = b."Field3"
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
	"UpdateOuterTable" t1
ORDER BY
	t1."Id"

