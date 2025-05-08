BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
			(SELECT NULL::Int "Id", NULL::text "Value", NULL::Int "Id0", NULL::text "Value0" WHERE 1 = 0) r("Id", "Value", "Id0", "Value0")
		WHERE
			t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)
	)

