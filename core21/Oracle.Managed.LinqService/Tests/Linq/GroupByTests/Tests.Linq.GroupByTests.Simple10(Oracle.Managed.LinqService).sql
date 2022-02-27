BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 1

SELECT
	keyParam.ParentID,
	keyParam.ChildID
FROM
	Child keyParam
WHERE
	keyParam.ParentID = :ParentID_1

