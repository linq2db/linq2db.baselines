﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(CASE
		WHEN t1."ChildID" > 20 THEN 1
		ELSE 0
	END)
FROM
	"Child" t1

