﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1010

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
BeginTransaction
BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1011

UPDATE
	"Parent"
SET
	"Value1" = :Value1
WHERE
	"Parent"."ParentID" = 1010

BeforeExecute
CommitTransaction
BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."ParentID" = 1010
LIMIT 1

