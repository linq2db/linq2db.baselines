﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	MAX(CASE
		WHEN t1."ChildID" > 20 THEN 1
		ELSE 0
	END)
FROM
	"Child" t1

