BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT TOP 1
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @p
ORDER BY
	[x].[ParentID] DESC

