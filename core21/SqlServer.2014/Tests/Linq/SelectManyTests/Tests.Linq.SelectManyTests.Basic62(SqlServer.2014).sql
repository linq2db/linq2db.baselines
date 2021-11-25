BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[_1].[c1]
FROM
	[Parent] [cp]
		CROSS APPLY (
			SELECT
				[_].[ParentID] + [cp].[ParentID] as [c1]
			FROM
				[Child] [_]
			WHERE
				[cp].[ParentID] = [_].[ParentID]
		) [_1]
WHERE
	[_1].[c1] > 1

