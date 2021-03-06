﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = 1001

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

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
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = 1001

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."Value1" = 1001

