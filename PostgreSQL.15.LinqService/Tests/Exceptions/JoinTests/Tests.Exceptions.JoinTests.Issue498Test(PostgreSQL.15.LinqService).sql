﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID"
FROM
	"Parent" x
		INNER JOIN "Child" y ON x."ParentID" = y."ParentID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID"
FROM
	"Parent" x
		INNER JOIN "Child" y ON x."ParentID" = y."ParentID"
GROUP BY
	x."ParentID"

