BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 300000
DECLARE @take_1 Int -- Int32
SET     @take_1 = 300001

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 1
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= @take_1

