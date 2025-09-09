BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Id",
	t."Value"
FROM
	"TableToInsert" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 2 AS "Id", 'Janet' AS "Value" FROM sys.dual
				UNION ALL
				SELECT 3, 'Doe' FROM sys.dual) r
		WHERE
			t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

