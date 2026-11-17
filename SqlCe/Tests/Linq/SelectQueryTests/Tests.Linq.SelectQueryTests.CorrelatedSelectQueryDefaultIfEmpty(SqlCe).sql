-- SqlCe
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [error].[c1] = 1 OR [error].[c2] = 1 THEN 5
		ELSE 3
	END,
	CASE
		WHEN [error].[c1] = 1 OR [error].[c2] = 1 THEN 'bad'
		ELSE NULL
	END
FROM
	[Parent] [p]
		CROSS JOIN [Child] [c_1]
		OUTER APPLY (
			SELECT
				CASE
					WHEN [c_1].[ChildID] <> [p].[ParentID] * 10 + 1 THEN 1
					ELSE 0
				END as [c1],
				CASE
					WHEN [p].[Value1] IS NULL OR [p].[Value1] <> [c_1].[ParentID]
						THEN 1
					ELSE 0
				END as [c2]
		) [error]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlCe
SELECT
	NULL

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	NULL

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	NULL

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
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

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlCe
SELECT
	NULL

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	NULL

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	NULL

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

-- SqlCe
SELECT
	'bad'

