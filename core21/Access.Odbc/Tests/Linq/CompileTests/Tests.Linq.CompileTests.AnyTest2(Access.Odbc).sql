BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT 
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT 
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

