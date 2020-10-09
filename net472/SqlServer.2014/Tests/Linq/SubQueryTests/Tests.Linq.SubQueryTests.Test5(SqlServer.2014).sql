BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @_testValue Int -- Int32
SET     @_testValue = 3

SELECT 
	[t1].[c2], 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [p]
		WHERE
			[p].[ParentID] = [t1].[c3]
	), 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [p_1]
		WHERE
			[p_1].[ParentID] = [t1].[c3] AND [p_1].[ParentID] = @_testValue
	)
FROM
	( 
		SELECT DISTINCT 
			IIF([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c1], 
			IIF([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c2], 
			IIF([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c3]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] IN (1, 2)
	) [t1]

