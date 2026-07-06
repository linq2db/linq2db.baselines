-- SqlServer.2012

SELECT
	[m_1].[ParentID],
	[m_1].[Value1]
FROM
	[Parent] [m_1]
		INNER JOIN (
			SELECT
				[id].[ParentID] as [set_col_0__]
			FROM
				[Parent] [id]
			WHERE
				[id].[ParentID] = 1
			UNION ALL
			SELECT
				[t].[ParentID] as [set_col_0__]
			FROM
				[Parent] [t]
			WHERE
				[t].[ParentID] = 2
		) [id_1] ON [id_1].[set_col_0__] = [m_1].[ParentID]

-- SqlServer.2012

SELECT
	[m_1].[ParentID],
	[m_1].[Value1]
FROM
	[Parent] [m_1],
	(
		SELECT
			[id].[ParentID] as [id]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] = 1
		UNION ALL
		SELECT
			[t].[ParentID] as [id]
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = 2
	) [id_1]
WHERE
	[id_1].[id] = [m_1].[ParentID]

