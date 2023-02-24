BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

