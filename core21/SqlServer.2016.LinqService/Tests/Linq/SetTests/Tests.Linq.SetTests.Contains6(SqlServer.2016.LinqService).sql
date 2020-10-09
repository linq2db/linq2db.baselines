BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 1

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] + @n
	)

