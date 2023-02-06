﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

MERGE /*+ FULL(c_1) ALL_ROWS FIRST_ROWS(10) */ INTO "Parent" Target
USING
(
	SELECT
		c_1."ParentID",
		c_1."Value1"
	FROM
		"Parent" c_1
	WHERE
		c_1."ParentID" < -1111
) "Source"
ON (Target."ParentID" = "Source"."ParentID")

WHEN MATCHED THEN
UPDATE
SET
	Target."Value1" = "Source"."Value1"

