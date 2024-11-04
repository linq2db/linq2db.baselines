BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

