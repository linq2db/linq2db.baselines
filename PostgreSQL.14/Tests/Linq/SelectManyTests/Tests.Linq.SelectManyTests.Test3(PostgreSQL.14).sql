﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" p
		INNER JOIN "GrandChild" g_1 ON p."ParentID" = g_1."ParentID",
	"Person" t

