-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT
					1 as [c1]
			) [t2]
				CROSS JOIN (
					SELECT
						[p].[ParentID]
					FROM
						[Parent] [p]
					WHERE
						[p].[ParentID] = 3
					LIMIT 1
				) [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		CROSS JOIN (
			SELECT
				[p].[ParentID],
				[p].[Value1]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] = 3
			LIMIT 1
		) [t1]

