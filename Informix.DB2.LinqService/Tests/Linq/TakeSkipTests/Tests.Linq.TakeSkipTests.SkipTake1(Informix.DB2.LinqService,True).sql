BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT SKIP @skip FIRST @take
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take Integer(4) -- Int32
SET     @take = 5

SELECT SKIP @skip FIRST @take
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC

