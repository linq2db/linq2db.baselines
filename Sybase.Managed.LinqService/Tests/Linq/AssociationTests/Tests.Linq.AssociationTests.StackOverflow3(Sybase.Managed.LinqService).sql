BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1],
			(
				SELECT
					COUNT(*)
				FROM
					[Parent] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[Value1]
			) as [COUNT_1]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[COUNT_1] <> 0

