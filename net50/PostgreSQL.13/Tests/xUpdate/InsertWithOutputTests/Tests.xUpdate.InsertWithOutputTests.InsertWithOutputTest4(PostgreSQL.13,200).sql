﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @param Integer -- Int32
SET     @param = 200

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
	"Child"."ChildID" + "Child"."ParentID" + :param

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."ChildID",
	c_1."ParentID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

