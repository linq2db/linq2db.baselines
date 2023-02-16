BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @p_1 Int -- Int32
SET     @p_1 = -1

SELECT
	Count(*) > 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

