-- Oracle.11.Managed Oracle11

UPDATE
	"OuterTable"
SET
	"Field1" = (
		SELECT
			t1."Field4"
		FROM
			(
				SELECT
					y."Field4",
					ROW_NUMBER() OVER (PARTITION BY y."Field3" ORDER BY y."Field4") as "rn",
					y."Field3"
				FROM
					"InnerTable" y
			) t1
		WHERE
			"OuterTable"."Field2" = t1."Field3" AND t1."rn" = 1
	)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"OuterTable" t1
ORDER BY
	t1."Id"

