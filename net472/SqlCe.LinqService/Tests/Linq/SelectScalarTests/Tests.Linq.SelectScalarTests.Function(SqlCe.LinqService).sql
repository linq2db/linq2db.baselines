BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[c_1].[ChildID]
FROM
	[Child] [c_1]

