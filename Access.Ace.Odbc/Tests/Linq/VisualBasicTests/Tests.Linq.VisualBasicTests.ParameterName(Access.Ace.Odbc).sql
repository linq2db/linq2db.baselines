-- Access.Ace.Odbc AccessODBC
DECLARE @$VB$Local_id Int -- Int32
SET     @$VB$Local_id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

