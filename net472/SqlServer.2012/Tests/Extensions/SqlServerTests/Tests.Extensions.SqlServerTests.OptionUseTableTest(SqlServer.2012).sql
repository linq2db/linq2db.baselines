BeforeExecute
-- SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 10
DECLARE @id Int -- Int32
SET     @id = 10

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1] WITH (NoLock, ForceSeek)
		INNER JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]
WHERE
	[p].[Value1] = @n AND [p].[ParentID] = @id
OPTION (TABLE HINT(c_1, NoLock))

