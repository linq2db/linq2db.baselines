BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."OtherId",
	a_Association."Id"
FROM
	"Issue3791Table" t1
		LEFT JOIN "Issue3791GuidTable" a_Association ON t1."OtherId" = CAST(a_Association."Id" AS VarChar(255))

