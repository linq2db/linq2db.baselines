﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1111,1111),
(2111,2111),
(3111,3111),
(4111,4111)

BeforeExecute
CommitTransaction
BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

