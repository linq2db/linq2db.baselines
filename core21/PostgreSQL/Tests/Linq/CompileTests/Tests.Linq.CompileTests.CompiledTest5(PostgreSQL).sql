﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID AND p."Value1" = :Value1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID AND p."Value1" IS NULL

