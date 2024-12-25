BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

