BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID] + 1

