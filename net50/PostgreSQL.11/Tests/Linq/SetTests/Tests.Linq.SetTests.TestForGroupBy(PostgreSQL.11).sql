﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID",
	x."GrandChildID"
FROM
	"GrandChild" x
WHERE
	x."ParentID" IN (2)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID",
	x."GrandChildID"
FROM
	"GrandChild" x
WHERE
	x."ParentID" IN (3)

