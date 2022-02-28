﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	c_1."ParentID",
	:id
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 11
RETURNING
	"Child"."ChildID",
	"Child"."ParentID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	c_1."ChildID",
	c_1."ParentID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

