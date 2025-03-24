﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TableToInsert" t1
WHERE
	EXISTS(
		SELECT
			r."Id"
		FROM
			"TableToInsert" t
				INNER JOIN (VALUES
					(3), (4)
				) r("Id") ON t."Id" = r."Id"
		WHERE
			t1."Id" = t."Id"
	)

