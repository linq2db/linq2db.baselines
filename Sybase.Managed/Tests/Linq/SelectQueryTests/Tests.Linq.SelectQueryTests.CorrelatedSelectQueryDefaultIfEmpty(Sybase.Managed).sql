-- Sybase.Managed Sybase
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS NULL OR [p].[Value1] <> [c_1].[ParentID]
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS NULL OR [p].[Value1] <> [c_1].[ParentID]
			THEN 'bad'
		ELSE NULL
	END
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Sybase.Managed Sybase
SELECT
	NULL

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	NULL

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	NULL

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS NULL OR [p].[Value1] <> [c_1].[ParentID]
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS NULL OR [p].[Value1] <> [c_1].[ParentID]
			THEN 'bad'
		ELSE NULL
	END
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Sybase.Managed Sybase
SELECT
	NULL

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	NULL

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	NULL

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

-- Sybase.Managed Sybase
SELECT
	'bad'

