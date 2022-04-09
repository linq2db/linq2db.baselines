BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Key_1
FROM
	(
		SELECT
			selectParam.ParentID + 1 as ParentID,
			selectParam.ChildID as Key_1
		FROM
			GrandChild selectParam
	) t1
GROUP BY
	t1.ParentID,
	t1.Key_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 11

SELECT
	elemParam.ChildID
FROM
	GrandChild elemParam
WHERE
	elemParam.ParentID + 1 = @ParentID AND elemParam.ChildID = @ChildID

