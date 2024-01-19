﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	:id
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = "Child"."ChildID" + 1
FROM
	"Parent" "a_Parent"
WHERE
	"Child"."ChildID" = :id AND "a_Parent"."Value1" = 1 AND
	"Child"."ParentID" = "a_Parent"."ParentID"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1002

SELECT
	Count(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :ChildID

