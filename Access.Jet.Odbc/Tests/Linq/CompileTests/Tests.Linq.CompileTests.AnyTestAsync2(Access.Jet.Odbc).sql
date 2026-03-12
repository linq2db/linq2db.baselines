-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	COUNT(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

