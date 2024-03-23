BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = ?

