BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[_1].[c1]
FROM
	[Parent] [cp],
	(
		SELECT
			[_].[ParentID] + 1 as [c1]
		FROM
			[Child] [_]
	) [_1]
WHERE
	[_1].[c1] > 1

