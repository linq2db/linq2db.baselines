﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	user_1."FirstName",
	user_1."Status"
FROM
	"User" user_1
WHERE
	user_1."Status" IS NULL

