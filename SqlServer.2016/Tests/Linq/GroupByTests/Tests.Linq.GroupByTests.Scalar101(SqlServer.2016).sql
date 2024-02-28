BeforeExecute
-- SqlServer.2016

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

