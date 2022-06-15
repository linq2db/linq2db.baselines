BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 10

SELECT TOP (1)
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] = @id

