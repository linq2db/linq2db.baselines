-- SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	@id IN ([c_1].[ParentID], [c_1].[ChildID])

