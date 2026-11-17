-- SQLite.MS SQLite
SELECT
	[c_1].[ChildID],
	CASE
		WHEN ((
			SELECT
				[c_1].[ChildID] <> [p].[ParentID] * 10 + 1
		)) OR ((
			SELECT
				[p].[Value1] IS NOT [c_1].[ParentID]
		))
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN ((
			SELECT
				[c_1].[ChildID] <> [p].[ParentID] * 10 + 1
		)) OR ((
			SELECT
				[p].[Value1] IS NOT [c_1].[ParentID]
		))
			THEN 'bad'
		ELSE NULL
	END
FROM
	[Parent] [p]
		CROSS JOIN [Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.MS SQLite
SELECT
	NULL

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	NULL

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	NULL

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS NOT [c_1].[ParentID]
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS NOT [c_1].[ParentID]
			THEN 'bad'
		ELSE NULL
	END
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.MS SQLite
SELECT
	NULL

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	NULL

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	NULL

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

-- SQLite.MS SQLite
SELECT
	'bad'

