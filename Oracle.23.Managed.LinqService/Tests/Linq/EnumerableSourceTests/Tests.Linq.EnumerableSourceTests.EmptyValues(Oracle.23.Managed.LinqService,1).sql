BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Id",
	t."Value"
FROM
	"TableToInsert" t
		INNER JOIN (SELECT CAST(NULL AS Int) "Id", CAST(NULL AS VarChar(255)) "Value" FROM sys.dual WHERE 1 = 0) r ON t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)

