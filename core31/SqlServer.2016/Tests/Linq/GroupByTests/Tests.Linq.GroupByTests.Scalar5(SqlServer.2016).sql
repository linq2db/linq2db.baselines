BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

