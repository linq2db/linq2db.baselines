-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT TOP (1)
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

