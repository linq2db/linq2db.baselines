BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ParentID Variant -- Object
SET     @ParentID = 2
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 2

SELECT
	CAST(@ParentID AS Int),
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID_1

