-- SqlServer.Contained.MS SqlServer.2019
DECLARE @VBLocal_SelectedValue Int -- Int32
SET     @VBLocal_SelectedValue = 1

SELECT
	[w].[ParentID],
	[w].[ChildID],
	[w].[GrandChildID]
FROM
	[GrandChild] [w]
WHERE
	[w].[ChildID] = @VBLocal_SelectedValue

