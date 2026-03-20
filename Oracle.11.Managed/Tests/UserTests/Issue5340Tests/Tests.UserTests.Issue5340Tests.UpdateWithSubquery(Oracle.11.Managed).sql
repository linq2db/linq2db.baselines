-- Oracle.11.Managed Oracle11

UPDATE
	"OuterTable" t1
SET
	"Field1" = (
		SELECT
			t2."Field4"
		FROM
			(
				SELECT
					y."Field4",
					ROW_NUMBER() OVER (PARTITION BY y."Field3" ORDER BY y."Field4") as "rn",
					y."Field3"
				FROM
					"InnerTable" y
			) t2
		WHERE
			t1."Field2" = t2."Field3" AND t2."rn" = 1
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

