﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 5

UPDATE
	"Parent"
SET
	"Value1" = :Value1
FROM
	"Child" child_1
WHERE
	child_1."ChildID" = 10000 AND child_1."ParentID" = "Parent"."ParentID"

