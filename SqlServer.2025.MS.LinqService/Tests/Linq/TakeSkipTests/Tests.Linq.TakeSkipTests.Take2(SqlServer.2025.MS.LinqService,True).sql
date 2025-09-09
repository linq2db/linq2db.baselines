BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 1

SELECT TOP (@n)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

