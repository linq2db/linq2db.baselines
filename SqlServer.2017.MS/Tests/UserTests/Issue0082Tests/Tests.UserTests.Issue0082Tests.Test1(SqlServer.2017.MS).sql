BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Count(*)
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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

