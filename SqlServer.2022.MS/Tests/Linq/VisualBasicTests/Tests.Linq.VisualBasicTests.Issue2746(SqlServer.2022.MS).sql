-- SqlServer.2022.MS SqlServer.2022
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

