BeforeExecute
-- SqlServer.2017

SELECT 
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

