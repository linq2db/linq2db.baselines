-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
UPDATE
	"UpdateOuterTable"
SET
	"Field1" = (
		SELECT
			y."Field4"
		FROM
			"UpdateInnerTable" y
		WHERE
			"UpdateOuterTable"."Field2" = y."Field3"
		ORDER BY
			y."Field4"
		LIMIT 1
	)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"UpdateOuterTable" t1
ORDER BY
	t1."Id"

