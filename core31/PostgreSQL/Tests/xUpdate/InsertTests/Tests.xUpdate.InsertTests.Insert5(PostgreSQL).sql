﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	c_1."ParentID",
	:ChildID
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 11

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

