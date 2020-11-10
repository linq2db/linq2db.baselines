BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.Key_1,
	t1.Key_2
FROM
	(
		SELECT
			selectParam.ParentID + 1 as Key_1,
			selectParam.ChildID as Key_2
		FROM
			GrandChild selectParam
	) t1
GROUP BY
	t1.Key_1,
	t1.Key_2

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 2
DECLARE @ChildID Int32
SET     @ChildID = 11

SELECT
	elemParam.ChildID
FROM
	GrandChild elemParam
WHERE
	(elemParam.ParentID + 1 = :ParentID AND elemParam.ChildID = :ChildID)

