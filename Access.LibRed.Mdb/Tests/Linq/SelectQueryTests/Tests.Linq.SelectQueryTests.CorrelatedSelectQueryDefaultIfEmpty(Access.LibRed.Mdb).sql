-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[sub].[ChildID],
	CASE
		WHEN [error].[c1] OR [error].[c2] THEN 5
		ELSE 3
	END,
	CASE
		WHEN [error].[c1] OR [error].[c2] THEN 'bad'
		ELSE NULL
	END
FROM
	(
		SELECT
			[c_1].[ChildID],
			[p].[ParentID],
			[p].[Value1],
			[c_1].[ParentID] as [ParentID_1]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [sub]
		OUTER APPLY (
			SELECT
				[sub].[ChildID] <> [sub].[ParentID] * 10 + 1 as [c1],
				[sub].[Value1] IS DISTINCT FROM [sub].[ParentID_1] as [c2]
		) [error]
WHERE
	[sub].[ParentID_1] = [sub].[ParentID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	IIF(False, '', NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	IIF(False, '', NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	IIF(False, '', NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS DISTINCT FROM [c_1].[ParentID]
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR [p].[Value1] IS DISTINCT FROM [c_1].[ParentID]
			THEN 'bad'
		ELSE NULL
	END
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	IIF(False, '', NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	IIF(False, '', NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	IIF(False, '', NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	'bad'

