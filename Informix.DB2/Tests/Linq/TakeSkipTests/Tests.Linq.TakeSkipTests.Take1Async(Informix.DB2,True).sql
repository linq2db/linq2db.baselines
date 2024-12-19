BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	ch.ParentID,
	ch.ChildID
FROM
	Child ch

BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	ch.ParentID,
	ch.ChildID
FROM
	Child ch

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	ch.ParentID,
	ch.ChildID
FROM
	Child ch

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	ch.ParentID,
	ch.ChildID
FROM
	Child ch

