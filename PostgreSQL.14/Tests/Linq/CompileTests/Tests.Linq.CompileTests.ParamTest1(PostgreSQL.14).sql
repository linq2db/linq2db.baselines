﻿BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

