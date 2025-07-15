BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	ch.ChildID > 3 OR ch.ChildID < 4

