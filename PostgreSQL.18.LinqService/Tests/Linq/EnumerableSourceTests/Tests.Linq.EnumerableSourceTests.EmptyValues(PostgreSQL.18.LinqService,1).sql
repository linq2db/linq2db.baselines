BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id",
	t."Value"
FROM
	"TableToInsert" t
		INNER JOIN (SELECT NULL::Int "Id", NULL::text "Value" WHERE 1 = 0) r("Id", "Value") ON t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)

