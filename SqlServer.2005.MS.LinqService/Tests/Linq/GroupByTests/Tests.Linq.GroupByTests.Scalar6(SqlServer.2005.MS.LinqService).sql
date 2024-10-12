BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX(CASE
		WHEN [ch].[ParentID] < 3 THEN [ch].[ChildID]
		ELSE NULL
	END)
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] < 3
GROUP BY
	[ch].[ParentID]

