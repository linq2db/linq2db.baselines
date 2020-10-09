BeforeExecute
-- SqlServer.2008

SELECT 
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]

