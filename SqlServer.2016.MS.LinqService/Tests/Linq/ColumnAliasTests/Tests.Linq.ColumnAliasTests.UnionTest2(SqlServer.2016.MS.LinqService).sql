BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[p].[ParentID] as [ID],
			[p].[Value1]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[t1].[ParentID] as [ID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [t2]
WHERE
	[t2].[ID] > 1

