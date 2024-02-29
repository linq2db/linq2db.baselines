BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id Int -- Int32
SET     @id = 10

SELECT TOP (@take)
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] = @id

