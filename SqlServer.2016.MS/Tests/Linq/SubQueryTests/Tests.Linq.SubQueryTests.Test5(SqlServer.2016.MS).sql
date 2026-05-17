-- SqlServer.2016.MS SqlServer.2016
DECLARE @testValue Int -- Int32
SET     @testValue = 3

SELECT
	[id_1].[c1],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [p]
		WHERE
			[p].[ParentID] = [id_1].[c1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [p_1]
		WHERE
			[p_1].[ParentID] = [id_1].[c1] AND [p_1].[ParentID] = @testValue
	)
FROM
	(
		SELECT DISTINCT
			IIF([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c1]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] IN (1, 2)
	) [id_1]

