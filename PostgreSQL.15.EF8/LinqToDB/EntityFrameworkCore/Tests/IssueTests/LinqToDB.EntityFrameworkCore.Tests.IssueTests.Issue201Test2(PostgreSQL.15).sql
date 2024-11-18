﻿--  PostgreSQL.9.3 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parents" x
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"Children" y
		WHERE
			x."Id" = y."ParentId" AND y."IsActive"
	)



