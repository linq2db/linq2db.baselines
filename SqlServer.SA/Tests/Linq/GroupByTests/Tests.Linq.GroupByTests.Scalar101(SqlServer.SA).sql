BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Max([ch].[ChildID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID]

