BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP 1
					[x].[ParentID]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] = 3
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 3

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP 1
					[x].[ParentID]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] = 3
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 3

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP 1
					[x].[ParentID]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] = 3
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 3

BeforeExecute
DisposeTransactionAsync
