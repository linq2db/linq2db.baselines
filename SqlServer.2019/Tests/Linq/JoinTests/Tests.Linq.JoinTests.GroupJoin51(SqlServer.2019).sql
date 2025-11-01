-- SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
				CROSS APPLY (
					SELECT TOP (1)
						*
					FROM
						[Child] [ch]
					WHERE
						[p].[ParentID] = [ch].[ParentID]
					ORDER BY
						[ch].[ChildID] DESC
				) [t1]
		WHERE
			[p].[ParentID] = 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2019

SELECT
	[p].[ParentID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT TOP (1)
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[p].[ParentID] = [ch].[ParentID]
			ORDER BY
				[ch].[ChildID] DESC
		) [t1]
WHERE
	[p].[ParentID] = 1

