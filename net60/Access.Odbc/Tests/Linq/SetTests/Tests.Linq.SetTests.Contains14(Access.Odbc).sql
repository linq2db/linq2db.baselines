BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	Count(*) > 0
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	Count(*) > 0
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = ?

