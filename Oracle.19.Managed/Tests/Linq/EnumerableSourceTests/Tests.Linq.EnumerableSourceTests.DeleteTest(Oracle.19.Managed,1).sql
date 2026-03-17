-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"TableToInsert" t1
WHERE
	EXISTS(
		SELECT
			r."Id"
		FROM
			"TableToInsert" t
				INNER JOIN (
					SELECT 2 AS "Id" FROM sys.dual
					UNION ALL
					SELECT 3 FROM sys.dual) r ON t."Id" = r."Id"
		WHERE
			t1."Id" = t."Id"
	)

