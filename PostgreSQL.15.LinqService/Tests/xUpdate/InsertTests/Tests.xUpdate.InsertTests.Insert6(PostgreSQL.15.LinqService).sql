﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."Value1" = 11

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT
	c_1."ParentID" + 1000,
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 11

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."Value1" = 11

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	t1."Value1" = 11

