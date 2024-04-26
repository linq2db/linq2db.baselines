﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"Value1",
	"ParentID"
)
VALUES
(
	:Value1,
	:ParentID
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent"
SET
	"Value1" = 2
WHERE
	"Parent"."ParentID" = :id

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 2

