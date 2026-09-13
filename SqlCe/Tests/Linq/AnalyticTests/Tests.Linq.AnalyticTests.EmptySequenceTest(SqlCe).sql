-- SqlCe
SELECT
	[m_1].[ParentID],
	[m_1].[Key_1],
	[d_2].[ChildID]
FROM
	(
		SELECT DISTINCT
			[d_1].[Key_1],
			[t1].[ParentID]
		FROM
			(
				SELECT DISTINCT
					[c_1].[ParentID]
				FROM
					[Parent] [c_1]
			) [t1]
				CROSS APPLY (
					SELECT DISTINCT
						[d].[ParentID] as [Key_1]
					FROM
						[Child] [d]
					WHERE
						[t1].[ParentID] = [d].[ParentID]
				) [d_1]
	) [m_1]
		INNER JOIN [Child] [d_2] ON [m_1].[ParentID] = [d_2].[ParentID] AND [m_1].[Key_1] = [d_2].[ParentID]

-- SqlCe
SELECT
	[m_1].[ParentID],
	[d_1].[Key_1]
FROM
	(
		SELECT DISTINCT
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				[d].[ParentID] as [Key_1]
			FROM
				[Child] [d]
			WHERE
				[m_1].[ParentID] = [d].[ParentID]
		) [d_1]

-- SqlCe
SELECT
	[c_1].[ParentID]
FROM
	[Parent] [c_1]

