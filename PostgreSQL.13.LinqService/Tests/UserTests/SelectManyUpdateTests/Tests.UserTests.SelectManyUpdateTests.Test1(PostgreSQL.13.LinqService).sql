﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

UPDATE
	"Parent"
SET
	"Value1" = :Value1
FROM
	"Parent" x
WHERE
	x."ParentID" IN (0, 0) AND x."ParentID" = "Parent"."Value1" AND
	"Parent"."Value1" IS NOT NULL

