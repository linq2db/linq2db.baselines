﻿BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :p

