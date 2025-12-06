-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [t1]

-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

