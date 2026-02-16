-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"OuterTable"
SET
	"Field1" = (
		SELECT
			b_3."Field4"
		FROM
			"OuterTable" t6
				CROSS JOIN (
					SELECT
						1 as "c1"
					FROM SYS.DUAL
				) t4
				CROSS APPLY (
					SELECT
						t5."Field4"
					FROM
						(
							SELECT
								b_2."Field4"
							FROM
								"InnerTable" b_2
							WHERE
								t6."Field2" = b_2."Field3"
							ORDER BY
								b_2."Field4"
						) t5
					WHERE
						ROWNUM <= 1
				) b_3
		WHERE
			"OuterTable"."Id" = t6."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"OuterTable" t3
				CROSS JOIN (
					SELECT
						1 as "c1"
					FROM SYS.DUAL
				) t1
				CROSS APPLY (
					SELECT
						t2."c1"
					FROM
						(
							SELECT
								1 as "c1"
							FROM
								"InnerTable" b
							WHERE
								t3."Field2" = b."Field3"
							ORDER BY
								b."Field4"
						) t2
					WHERE
						ROWNUM <= 1
				) b_1
		WHERE
			"OuterTable"."Id" = t3."Id"
	)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2"
FROM
	"OuterTable" t1
ORDER BY
	t1."Id"

