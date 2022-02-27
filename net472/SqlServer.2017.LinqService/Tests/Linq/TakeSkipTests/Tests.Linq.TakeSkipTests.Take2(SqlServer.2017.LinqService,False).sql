BeforeExecute
-- SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 1

SELECT TOP (@n)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]

