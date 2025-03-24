﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"Parent"
SET
	"Value1" = 5
FROM
	"Child" child_1
WHERE
	child_1."ChildID" = 10000 AND child_1."ParentID" = "Parent"."ParentID"

