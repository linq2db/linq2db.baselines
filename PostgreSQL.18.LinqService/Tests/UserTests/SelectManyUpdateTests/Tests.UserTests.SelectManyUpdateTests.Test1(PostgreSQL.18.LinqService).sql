﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Value1 Bigint -- Int64
SET     @Value1 = NULL

UPDATE
	"Parent"
SET
	"Value1" = :Value1
FROM
	"Parent" x
WHERE
	x."ParentID" IN (0, 0) AND x."ParentID" = "Parent"."Value1"

