BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			[ch].[ParentID] * 1000 as [c1]
		FROM
			[Child] [ch]
	) [t]
WHERE
	[t].[c1] > 2000

