BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	f."Id",
	ft."Id",
	ft."FactId",
	ft."Name"
FROM
	"Tag" ft
		RIGHT JOIN "Fact" f ON ft."FactId" = f."Id"
WHERE
	f."Id" > 3

