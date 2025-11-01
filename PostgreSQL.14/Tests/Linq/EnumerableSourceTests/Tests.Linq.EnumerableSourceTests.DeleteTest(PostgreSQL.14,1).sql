-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TableToInsert" t1
WHERE
	EXISTS(
		SELECT
			r."Id"
		FROM
			"TableToInsert" t
				INNER JOIN (VALUES
					(2), (3)
				) r("Id") ON t."Id" = r."Id"
		WHERE
			t1."Id" = t."Id"
	)

