﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(CASE
		WHEN c_1."ChildID" > 20 THEN 1
		ELSE 0
	END)
FROM
	"Child" c_1

