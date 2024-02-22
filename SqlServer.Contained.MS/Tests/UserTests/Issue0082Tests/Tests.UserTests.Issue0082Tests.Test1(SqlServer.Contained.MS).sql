BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [od]
		WHERE
			[t1].[ParentID] = [od].[ParentID]
	),
	(
		SELECT
			Sum([od_1].[ParentID])
		FROM
			[Child] [od_1]
		WHERE
			[t1].[ParentID] = [od_1].[ParentID]
	)
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [od]
		WHERE
			[x].[ParentID] = [od].[ParentID]
	),
	(
		SELECT
			Sum([od_1].[ParentID])
		FROM
			[Child] [od_1]
		WHERE
			[x].[ParentID] = [od_1].[ParentID]
	)
FROM
	[Parent] [x]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Child] [od]
		WHERE
			[x].[ParentID] = [od].[ParentID]
	) > 0

