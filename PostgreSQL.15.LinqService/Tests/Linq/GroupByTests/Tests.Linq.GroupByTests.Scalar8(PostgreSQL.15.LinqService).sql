﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

