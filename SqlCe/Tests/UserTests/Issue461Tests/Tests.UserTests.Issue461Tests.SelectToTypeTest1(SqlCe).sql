BeforeExecute
-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Parent] [sep]
		LEFT JOIN (
			SELECT TOP (1)
				[l].[ParentID] + 1 as [Id]
			FROM
				[Child] [l]
		) [t1] ON 1=1

