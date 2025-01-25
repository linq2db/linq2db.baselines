BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT FIRST @take
	COUNT(*),
	1 + MIN(g_1.ChildID),
	MAX(g_1.ChildID)
FROM
	Child g_1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

