﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
FOR SHARE OF t

