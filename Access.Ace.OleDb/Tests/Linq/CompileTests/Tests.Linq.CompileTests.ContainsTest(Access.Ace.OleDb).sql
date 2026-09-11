-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

