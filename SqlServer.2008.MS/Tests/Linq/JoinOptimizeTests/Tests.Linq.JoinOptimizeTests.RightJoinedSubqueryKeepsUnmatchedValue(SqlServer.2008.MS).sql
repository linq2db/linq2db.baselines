-- SqlServer.2008.MS SqlServer.2008
SELECT
	[s].[ParentID],
	CASE
		WHEN [s].[Value1] IS NULL THEN N'none'
		ELSE NULL
	END
FROM
	[Parent] [x]
		RIGHT JOIN [Parent] [s] ON [s].[Value1] = [x].[ParentID]

