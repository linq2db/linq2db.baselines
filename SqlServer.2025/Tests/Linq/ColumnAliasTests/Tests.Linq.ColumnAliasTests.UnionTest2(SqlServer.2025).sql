-- SqlServer.2025 SqlServer.2022

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

