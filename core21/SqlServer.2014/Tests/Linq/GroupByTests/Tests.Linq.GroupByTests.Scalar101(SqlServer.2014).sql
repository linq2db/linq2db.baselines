BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

