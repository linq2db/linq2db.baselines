BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]

