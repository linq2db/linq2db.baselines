﻿BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" p
WHERE
	p."Value1" = 11 AND p."Value1" IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."Value1" = 11 AND p."Value1" IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" p
WHERE
	p."Value1" = 11 AND p."Value1" IS NOT NULL

