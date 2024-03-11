BeforeExecute
-- SqlServer.2012

SELECT TOP (2)
	[t1].[c1]
FROM
	(
		SELECT
			IIF(COUNT([left_1].[ParentID]) = COUNT([right_1].[ParentID]) AND COUNT([left_1].[ParentID]) = COUNT(*), 1, 0) as [c1]
		FROM
			[Parent] [left_1]
				FULL JOIN [Parent] [right_1] ON [right_1].[ParentID] = [left_1].[ParentID]
	) [t1]

