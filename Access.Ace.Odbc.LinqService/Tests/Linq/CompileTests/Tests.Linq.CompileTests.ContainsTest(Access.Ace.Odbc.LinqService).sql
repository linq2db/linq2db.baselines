BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

