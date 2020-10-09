BeforeExecute
-- SqlCe

SELECT 
	[_1].[c1]
FROM
	[Parent] [cp]
		INNER JOIN ( 
			SELECT 
				[_].[ParentID] + 1 as [c1], 
				[_].[ParentID]
			FROM
				[Child] [_]
		) [_1] ON [cp].[ParentID] = [_1].[ParentID]
WHERE
	([_1].[c1] > 0 OR [_1].[c1] > 3) AND ([_1].[c1] > 1 OR [_1].[c1] > 2)

