BeforeExecute
-- SqlServer.2016 SqlServer.2012

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
	[_1].[c1] > 1

