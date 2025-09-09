BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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
			(SELECT NULL::Int "Id", NULL::text "Value" WHERE 1 = 0) r("Id", "Value")
		WHERE
			t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)
	)

