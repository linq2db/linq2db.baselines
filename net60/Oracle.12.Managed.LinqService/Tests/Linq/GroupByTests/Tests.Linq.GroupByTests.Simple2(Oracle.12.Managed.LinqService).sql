﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"GrandChild" t1
GROUP BY
	t1."ParentID",
	t1."ChildID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @ChildID Int32
SET     @ChildID = 11

SELECT
	keyParam."ParentID",
	keyParam."ChildID",
	keyParam."GrandChildID"
FROM
	"GrandChild" keyParam
WHERE
	keyParam."ParentID" = :ParentID AND keyParam."ChildID" = :ChildID

