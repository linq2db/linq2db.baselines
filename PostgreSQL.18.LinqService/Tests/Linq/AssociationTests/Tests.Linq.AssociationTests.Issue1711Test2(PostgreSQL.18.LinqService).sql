﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id"
FROM
	"Entity1711" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" r
		WHERE
			r."Deleted" = False AND r."EntityId" = t."Id"
	)

