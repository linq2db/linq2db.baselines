BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

