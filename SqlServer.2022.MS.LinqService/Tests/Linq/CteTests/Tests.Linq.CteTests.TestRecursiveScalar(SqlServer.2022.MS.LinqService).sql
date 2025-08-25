BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

WITH [MY_CTE] ([field])
AS
(
	SELECT
		[t1].[ChildID]
	FROM
		(
			SELECT TOP (@take)
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
		) [t1]
	UNION ALL
	SELECT
		[t2].[ChildID] + 1
	FROM
		[Child] [t2]
			INNER JOIN [MY_CTE] [ct] ON [ct].[field] = [t2].[ChildID] + 1
)
SELECT
	[t3].[field]
FROM
	[MY_CTE] [t3]

