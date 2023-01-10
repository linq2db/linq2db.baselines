﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	selectParam."ParentID" + 1,
	selectParam."ChildID"
FROM
	"GrandChild" selectParam
GROUP BY
	selectParam."ParentID" + 1,
	selectParam."ChildID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 2
DECLARE @ChildID Int32
SET     @ChildID = 11

SELECT
	elemParam."ChildID"
FROM
	"GrandChild" elemParam
WHERE
	elemParam."ParentID" + 1 = :ParentID AND elemParam."ChildID" = :ChildID

