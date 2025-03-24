﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	MAX(c_1."ParentID")
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

