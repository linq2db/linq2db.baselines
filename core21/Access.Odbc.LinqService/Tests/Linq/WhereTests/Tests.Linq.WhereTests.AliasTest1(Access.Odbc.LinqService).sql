BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @user_1 Int -- Int32
SET     @user_1 = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

