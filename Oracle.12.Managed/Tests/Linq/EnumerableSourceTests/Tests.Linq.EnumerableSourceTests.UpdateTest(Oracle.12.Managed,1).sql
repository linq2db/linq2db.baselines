-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"TableToInsert"
SET
	"Value" = (
		SELECT
			r_1."Value"
		FROM
			"TableToInsert" t_1
				INNER JOIN (
					SELECT 2 AS "Id", 'Janet Updated' AS "Value" FROM sys.dual
					UNION ALL
					SELECT 3, 'Doe Updated' FROM sys.dual) r_1 ON t_1."Id" = r_1."Id"
		WHERE
			"TableToInsert"."Id" = t_1."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" t
				INNER JOIN (
					SELECT 2 AS "Id", 'Janet Updated' AS "Value" FROM sys.dual
					UNION ALL
					SELECT 3, 'Doe Updated' FROM sys.dual) r ON t."Id" = r."Id"
		WHERE
			"TableToInsert"."Id" = t."Id"
	)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

