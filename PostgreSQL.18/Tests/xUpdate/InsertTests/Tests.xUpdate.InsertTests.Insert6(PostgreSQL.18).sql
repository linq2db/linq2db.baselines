﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."Value1" = 11

BeforeExecute
-- PostgreSQL.18 PostgreSQL

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
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."Value1" = 11

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	p."Value1" = 11

