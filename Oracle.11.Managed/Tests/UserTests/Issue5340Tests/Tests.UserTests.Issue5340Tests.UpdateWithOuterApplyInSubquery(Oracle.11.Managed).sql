-- Oracle.11.Managed Oracle11

UPDATE
	"OuterTable"
SET
	"Field1" = (
		SELECT
			b_3."Field4"
		FROM
			"OuterTable" t4
				CROSS JOIN (
					SELECT
						1 as "c1"
					FROM SYS.DUAL
				) t3
				INNER JOIN (
					SELECT
						b_2."Field4",
						ROW_NUMBER() OVER (PARTITION BY b_2."Field3" ORDER BY b_2."Field4") as "rn",
						b_2."Field3"
					FROM
						"InnerTable" b_2
				) b_3 ON t4."Field2" = b_3."Field3" AND b_3."rn" = 1
		WHERE
			"OuterTable"."Id" = t4."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"OuterTable" t2
				CROSS JOIN (
					SELECT
						1 as "c1"
					FROM SYS.DUAL
				) t1
				INNER JOIN (
					SELECT
						ROW_NUMBER() OVER (PARTITION BY b."Field3" ORDER BY b."Field4") as "rn",
						b."Field3"
					FROM
						"InnerTable" b
				) b_1 ON t2."Field2" = b_1."Field3" AND b_1."rn" = 1
		WHERE
			"OuterTable"."Id" = t2."Id"
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

