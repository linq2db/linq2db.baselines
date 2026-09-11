-- Access.Ace.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

