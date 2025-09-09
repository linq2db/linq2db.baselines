BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t3].[ParentID],
	[t3].[Value1]
FROM
	(
		SELECT
			[t2].[ParentID],
			[t2].[Value1]
		FROM
			(
				SELECT
					[t1].[ParentID],
					[t1].[Value1],
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Parent] [t1]
			) [t2]
		WHERE
			[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)
	) [t3]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

