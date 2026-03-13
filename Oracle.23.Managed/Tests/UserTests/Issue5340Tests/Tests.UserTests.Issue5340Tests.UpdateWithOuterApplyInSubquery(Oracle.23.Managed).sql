-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"OuterTable" t1
SET
	"Field1" = (
		SELECT
			t2."Field4"
		FROM
			(
				SELECT
					b."Field4"
				FROM
					"InnerTable" b
				WHERE
					t1."Field2" = b."Field3"
				ORDER BY
					b."Field4"
			) t2
		WHERE
			ROWNUM <= 1
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"OuterTable" t1
ORDER BY
	t1."Id"

