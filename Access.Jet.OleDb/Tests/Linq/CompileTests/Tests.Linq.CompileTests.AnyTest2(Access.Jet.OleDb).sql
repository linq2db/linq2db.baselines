BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

