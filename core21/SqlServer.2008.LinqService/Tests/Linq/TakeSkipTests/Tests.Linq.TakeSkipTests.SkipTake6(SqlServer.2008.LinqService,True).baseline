BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1],
	(
		SELECT TOP (@take)
			[p].[ParentID]
		FROM
			[GrandChild] [p]
	) [t1]
WHERE
	[c_1].[ParentID] = [t1].[ParentID]

BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 12
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1],
	(
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[p].[ParentID],
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[GrandChild] [p]
			) [t1]
		WHERE
			[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
	) [t2]
WHERE
	[c_1].[ParentID] = [t2].[ParentID]

