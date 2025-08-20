BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	f."Id",
	t."Id",
	t."FactId",
	t."Name"
FROM
	"Fact" f
		LEFT JOIN "Tag" t ON t."FactId" = f."Id"
WHERE
	f."Id" > 3
ORDER BY
	f."Id"

