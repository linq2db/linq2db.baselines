﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

UPDATE
	"Parent"
SET
	"ParentID" = "Parent"."ParentID" + 1
WHERE
	"Parent"."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1002

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

