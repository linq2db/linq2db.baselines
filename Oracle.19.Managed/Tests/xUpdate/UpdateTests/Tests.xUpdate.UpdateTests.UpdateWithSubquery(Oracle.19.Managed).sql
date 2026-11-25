-- Oracle.19.Managed Oracle.Managed Oracle12
UPDATE
	"UpdateOuterTable" t1
SET
	"Field1" = (
		SELECT
			t2."Field4"
		FROM
			(
				SELECT
					y."Field4"
				FROM
					"UpdateInnerTable" y
				WHERE
					t1."Field2" = y."Field3"
				ORDER BY
					y."Field4"
			) t2
		WHERE
			ROWNUM <= 1
	)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"UpdateOuterTable" t1
ORDER BY
	t1."Id"

